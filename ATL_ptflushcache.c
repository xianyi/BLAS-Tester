/*
 *             Automatically Tuned Linear Algebra Software v3.9.16
 *                    (C) Copyright 2000 R. Clint Whaley
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *   1. Redistributions of source code must retain the above copyright
 *      notice, this list of conditions and the following disclaimer.
 *   2. Redistributions in binary form must reproduce the above copyright
 *      notice, this list of conditions, and the following disclaimer in the
 *      documentation and/or other materials provided with the distribution.
 *   3. The name of the ATLAS group or the names of its contributers may
 *      not be used to endorse or promote products derived from this
 *      software without specific written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE ATLAS GROUP OR ITS CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 */
#include <pthread.h>
#define DREAL
#include "atlas_misc.h"
#include "atlas_threads.h"

typedef struct ATL_FC ATL_FC;
struct ATL_FC
{
   double dret;
   double *dp;
   int N;
};

void ATL_ptCF(ATL_LAUNCHSTRUCT_t *lp, void *vptr)
{
   ATL_FC *tp = vptr;
   int i, N;
   double *cache, dret=0.0;

   N = tp->N;
   if (N > 0)
   {
      cache = tp->dp;
      for (i=0; i != N; i++) dret += cache[i];
   }
   tp->dret = dret;
}

double ATL_ptflushcache(int size)
/*
 * flush cache by reading enough mem; note that if the compiler gets
 * really smart, may be necessary to make vp a global variable so it
 * can't figure out it's not being modified other than during setup;
 * the fact that OPENBLAS_dzero is external will confuse most compilers
 */
{
  static void *vp=NULL;
  static double *cache=NULL;
  double dret=0.0;
  static int i, N = 0;
  ATL_LAUNCHSTRUCT_t ls;
  ATL_thread_t tp[ATL_NTHREADS];
  ATL_FC fct[ATL_NTHREADS];

  if (size < 0) /* flush cache */
  {
     ATL_assert(cache);
     for (i=0; i < ATL_NTHREADS; i++)
     {
        fct[i].N = N;
        fct[i].dp = cache+i*N;
     }
     ls.opstruct = (char*) fct;
     ls.opstructstride = (int) ( ((char*)(fct+1)) - (char*)fct );
     ls.OpStructIsInit = NULL;
     ls.CombineOpStructs = NULL;
     ls.DoWork = ATL_ptCF;
     ls.rank2thr = tp;
     dret = 0;
     for (i=0; i < ATL_NTHREADS; i++)
     {
        tp[i].vp = &ls;
        tp[i].rank = i;
     }
     ATL_thread_start(tp, 0, ATL_tlaunch, tp);
     ATL_thread_join(tp);
  }
  else if (size > 0) /* initialize */
  {
     vp = malloc(ATL_Cachelen + (size * ATL_NTHREADS));
     ATL_assert(vp);
     cache = ATL_AlignPtr(vp);
     N = size / sizeof(double);
     OPENBLAS_dzero(N*ATL_NTHREADS, cache, 1);
  }
  else if (size == 0) /* free cache */
  {
     if (vp) free(vp);
     vp = cache = NULL;
     N = 0;
  }
  return(dret);
}

#if ATL_LINEFLUSH  /* do we have option of flushing by cacheline? */

void ATL_ptCLF(ATL_LAUNCHSTRUCT_t *lp, void *vptr)
{
   ATL_FlushAreasByCL(vptr);
}

void ATL_ptFlushAreasByCL(FLSTRUCT *fp)
{
   ATL_thread_t tp[ATL_NTHREADS];
   ATL_LAUNCHSTRUCT_t ls;
   int i;

   ls.opstruct = (char*) fp;
   ls.opstructstride = 0;
   ls.OpStructIsInit = NULL;
   ls.CombineOpStructs = NULL;
   ls.DoWork = ATL_ptCLF;
   ls.rank2thr = tp;
   for (i=0; i < ATL_NTHREADS; i++)
   {
      tp[i].vp = &ls;
      tp[i].rank = i;
   }
   ATL_thread_start(tp, 0, ATL_tlaunch, tp);
   ATL_thread_join(tp);
}

#endif
