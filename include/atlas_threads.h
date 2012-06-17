#ifndef ATLAS_THREADS_H
   #define ATLAS_THREADS_H

#ifndef ATL_PTMAXMALLOC
   #ifdef ATL_PTMAXMALLOC_MB
      #define ATL_PTMAXMALLOC ((size_t)((ATL_PTMAXMALLOC_MB)<<20))
   #else
      #define ATL_PTMAXMALLOC ((size_t)((64)<<20))
   #endif
#endif
/*
 * The following defaults should be probed for, not defined
 * NOTE: OS X & FreeBSD lack the ability to set processor affinity.
 */
#ifdef ATL_OS_WinNT
   #define ATL_WINTHREADS
#elif !defined(ATL_PAFF_LAUNCH) && !defined(ATL_PAFF_SELF)
   #if defined(ATL_OS_Linux)
      #define ATL_PAFF_LAUNCH
      #define ATL_PAFF_SETAFFNP
   #elif defined(ATL_OS_HPUX)
      #define ATL_PAFF_LAUNCH
      #define ATL_PAFF_SETPROCNP
   #elif defined(ATL_OS_SunOS)
      #define ATL_PAFF_SELF
      #define ATL_PAFF_PBIND
   #elif defined(ATL_OS_IRIX)
      #define ATL_PAFF_SELF
      #define ATL_PAFF_RUNON
   #elif defined(ATL_OS_AIX)
      #define ATL_PAFF_SELF
      #define ATL_PAFF_BINDP
   #endif
   #ifndef ATL_RANK_IS_PROCESSORID
      #define ATL_RANK_IS_PROCESSORID 1
   #endif
#endif
#include "atlas_pthreads.h" /* gened file defs ATL_NTHREADS & ATL_NTHRPOW2 */
#ifdef ATL_WINTHREADS
   #include <windows.h>
   typedef struct
   {
      void *vp;      /* ptr to extra info */
      HANDLE thrH;   /* handle to thread */
      int rank;      /* my rank */
   } ATL_thread_t;
   #ifndef CREATE_SUSPENDED
      #define CREATE_SUSPENDED 0x00000004
   #endif
   #ifndef WAIT_FAILED
      #define WAIT_FAILED (~0)
   #endif
#else
   #include <pthread.h>
   typedef struct
   {
      pthread_t thrH;/* handle of thread */
      void *vp;      /* ptr to extra info */
      int rank;      /* my rank */
      #ifdef ATL_PAFF_SELF
         int paff_set;  /* have I set my process affinity yet? */
      #endif
   } ATL_thread_t;
#endif

typedef struct ATL_LaunchStruct ATL_LAUNCHSTRUCT_t;
struct ATL_LaunchStruct
{
   ATL_thread_t *rank2thr;              /* index by rank to get thread handle */
   char *opstruct;
   int (*OpStructIsInit)(void*);        /* Query to see if struct is valid */
   void (*CombineOpStructs)(void*, void*);  /* combine function */
   void (*DoWork)(ATL_LAUNCHSTRUCT_t*, void*);
   int opstructstride;                  /* size of operation-spec struct */
};


/*  Starts a thread running, and sets its affinity to proc if possible */
int ATL_thread_start(ATL_thread_t *thr, int proc, void *(*rout)(void*), void*);
int ATL_thread_join(ATL_thread_t*); /* waits on completion of thread */
void ATL_thread_exit(void*);        /* exits currently executing thread */
void *ATL_log2tlaunch(void *vp);    /* min spanning tree launch */

#define MindxT(A_,i_) ((void*)( ((char*)(A_)) + (i_) ))
#endif   /* end of #ifdef protecting include file from redundant inclusion */

#define ATL_tlaunch ATL_log2tlaunch   /* may want linear launch later */
