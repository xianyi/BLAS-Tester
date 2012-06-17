#ifndef ATLAS_NTHREADS_H
   #define ATLAS_NTHREADS_H

/* Get rid of 00 if you don't want to build pthreads */
   #ifndef ATL_WINTHREADS00
      #include <pthread.h>
   #endif
   #define ATL_NTHREADS THREADNUM
   #ifdef ATL_LAUNCHORDER
       static int ATL_launchorder[32] = {0,16,8,24,4,20,12,28,2,18,10,26,6,22,14,30,1,17,9,25,5,21,13,29,3,19,11,27,7,23,15,31};
   #endif

#endif
