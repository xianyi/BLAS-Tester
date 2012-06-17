#include "atlas_misc.h"
#include "atlas_threads.h"
#define ATL_THREAD_AFFINITY_1 1  /* temporary -- will need to probe for this */
int ATL_thread_start(ATL_thread_t *thr, int proc,
                     void *(*rout)(void*), void *arg)
/*
 * Creates a thread that will run only on processor proc.
 * RETURNS: 0 on success, non-zero on error
 * NOTE: present implementation dies on error, so 0 is always returned.
 */
{
#ifdef ATL_WINTHREADS
   DWORD thrID;

   thr->rank = proc;
   thr->thrH = CreateThread(NULL, 0, rout, arg, CREATE_SUSPENDED, &thrID);
   ATL_assert(thr->thrH);
   ATL_assert(SetThreadAffinityMask(thr->thrH, (1<<proc)));
   ATL_assert(ResumeThread(thr->thrH) == 1);
#else
   pthread_attr_t attr;
   #ifdef ATL_PAFF_SETAFFNP
      unsigned long cpuset;
   #elif defined(ATL_PAFF_SETPROCNP)
   #endif

   #ifdef ATL_PAFF_SELF
      thr->paff_set = 0;  /* affinity must be set by created thread */
   #endif
   thr->rank = proc;
   ATL_assert(!pthread_attr_init(&attr));
   #ifdef IBM_PT_ERROR
      ATL_assert(!pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_UNDETACHED));
   #else
      ATL_assert(!pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE));
   #endif
   pthread_attr_setscope(&attr, PTHREAD_SCOPE_SYSTEM); /* no chk, OK to fail */
   #ifdef ATL_PAFF_SETAFFNP
      #ifdef ATL_RANK_IS_PROCESSORID
         cpuset = (1<<proc);
      #else
         cpuset = (1<<ATL_rank2processorid[proc]);
      #endif
      ATL_assert(!pthread_attr_setaffinity_np(&attr, sizeof(cpuset), &cpuset));
   #elif defined(ATL_PAFF_SETPROCNP)
      #ifdef ATL_RANK_IS_PROCESSORID
         ATL_assert(!pthread_attr_setprocessor_np(&attr, (pthread_spu_t)proc,
                                                  PTHREAD_BIND_FORCED_NP));
      #else
         ATL_assert(!pthread_attr_setprocessor_np(&attr, (pthread_spu_t)
                                                  ATL_rank2processorid[proc],
                                                  PTHREAD_BIND_FORCED_NP));
      #endif
   #endif
   ATL_assert(!pthread_create(&thr->thrH, &attr, rout, arg));
   ATL_assert(!pthread_attr_destroy(&attr));
#endif
   return(0);
}
