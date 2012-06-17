#ifdef ATL_PAFF_SELF
   #ifdef ATL_PAFF_PLPA
      #include <plpa.h>
   #elif defined(ATL_PAFF_PBIND)
      #include <sys/types.h>
      #include <sys/processor.h>
      #include <sys/procset.h>
   #elif defined(ATL_PAFF_SCHED)
      #include <sched.h>
   #elif defined(ATL_PAFF_BINDP)
      #include <sys/thread.h>      /* thread_self header */
      #include <sys/processor.h>   /* bindprocessor header */
   #endif

static int ATL_setmyaffinity(ATL_thread_t *me)
/*
 * Attempts to sets the affinity of an already-running thread.  The
 * aff_set flag is set to true whether we succeed or not (no point in
 * trying multiple times).
 * RETURNS: 0 on success, non-zero error code on error
 */
{
   tp->aff_set = 1;
#ifdef ATL_PAFF_PLPA
   plpa_cpu_set_t cpuset;
   PLPA_CPU_ZERO(&cpuset);
   #ifdef ATL_RANK_IS_PROCESSORID
      PLPA_CPU_SET(iam, &cpuset);
   #else
      PLPA_CPU_SET(ATL_rank2processorid[me->rank], &cpuset);
   #endif
   return(plpa_sched_setaffinity((pid_t)0, sizeof(cpuset), &cpuset));
#elif defined(ATL_PAFF_PBIND)
   #ifdef ATL_RANK_IS_PROCESSORID
      return(processor_bind(P_LWPID, P_MYID, me->rank, NULL));
   #else
      return(processor_bind(P_LWPID, P_MYID, ATL_rank2processorid[me->rank],
                            NULL));
   #endif
#elif defined(ATL_PAFF_SCHED)
   unsigned long cpuset;
   #ifdef ATL_RANK_IS_PROCESSORID
      cpuset = (1<<me->rank);
   #else
      cpuset = (1<<ATL_rank2processorid[me->rank]);
   #endif
   return(sched_setaffinity(0, sizeof(cpuset), &cpuset);
#elif defined (ATL_PAFF_RUNON)
   #ifdef ATL_RANK_IS_PROCESSORID
      return(pthread_setrunon_np(me->rank));
   #else
      return(pthread_setrunon_np(ATL_rank2processorid[me->rank]));
   #endif
#elif defined(ATL_PAFF_BINDP)
   #ifdef ATL_RANK_IS_PROCESSORID
      return(bindprocessor(BINDTHREAD, thread_self(), me->rank));
   #else
      return(bindprocessor(BINDTHREAD, thread_self(),
                           ATL_rank2processorid[me->rank]));
   #endif
#endif
   return(0);
}
#endif
#include "atlas_misc.h"
#include "atlas_threads.h"
void *ATL_log2tlaunch(void *vp)
{
   ATL_thread_t *tp = vp, *btp;
   ATL_LAUNCHSTRUCT_t *lp;
   int i, iam, abit, mask, src, dest;
   int ATL_NTHRPOW2 = 1, tmp_nthreads = ATL_NTHREADS;

   while(tmp_nthreads >>= 1)
      ATL_NTHRPOW2++;

   iam = tp->rank;
/*
 * Set my affinity if I haven't already
 */
   #ifdef ATL_PAFF_SELF
      if (!tp->aff_set)
          ATL_setmyaffinity(tp);
   #endif
   btp = tp - iam;
   lp = tp->vp;
   mask = (1<<ATL_NTHRPOW2) - 1;   /* no threads are in at beginning */
/*
 * Take log_2(NTHR) steps to do log_2 launch
 */
   for (i=ATL_NTHRPOW2-1; i >= 0; i--)
   {
      abit = (1<<i);
      mask ^= abit;   /* double the # of threads participating */
      if (!(iam & mask))
      {
         if (!(iam & abit))
         {
            dest = iam ^ abit;
            if ( dest < ATL_NTHREADS && (!lp->OpStructIsInit ||
                 lp->OpStructIsInit(lp->opstruct+dest*lp->opstructstride)) )
               ATL_thread_start(btp+dest, dest, ATL_log2tlaunch, btp+dest);
         }
      }
   }
   lp->DoWork(lp, lp->opstruct+lp->opstructstride*iam);   /* do the operation */
/*
 * Join tree back up, combining results as required
 */
   mask = 0;
   for (i=0; i < ATL_NTHRPOW2; i++)
   {
      if (!(iam & mask))
      {
         abit = (1<<i);
         if (!(iam & abit))
         {
            src = iam ^ abit;
            if ( src < ATL_NTHREADS && (!lp->OpStructIsInit ||
                 lp->OpStructIsInit(lp->opstruct+lp->opstructstride*src)) )
            {
               ATL_thread_join(btp+src);
               if (lp->CombineOpStructs)
                  lp->CombineOpStructs(lp->opstruct+lp->opstructstride*iam,
                                       lp->opstruct+lp->opstructstride*src);
            }
         }
         else
            ATL_thread_exit(NULL);
      }
      mask |= abit;
   }
   return(NULL);
}
