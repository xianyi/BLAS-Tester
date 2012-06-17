#ifndef SMM_H
   #define SMM_H

   #define ATL_mmNOMULADD
   #define ATL_mmLAT 1
   #define ATL_mmMU  8
   #define ATL_mmNU  1
   #define ATL_mmKU  72
   #define MB 72
   #define NB 72
   #define KB 72
   #define NBNB 5184
   #define MBNB 5184
   #define MBKB 5184
   #define NBKB 5184
   #define NB2 144
   #define NBNB2 10368

   #define ATL_MulByNB(N_) ((N_) * 72)
   #define ATL_DivByNB(N_) ((N_) / 72)
   #define ATL_MulByNBNB(N_) ((N_) * 5184)
   #define NBmm ATL_sJIK72x72x72TN72x72x0_a1_b1
   #define NBmm_b1 ATL_sJIK72x72x72TN72x72x0_a1_b1
   #define NBmm_b0 ATL_sJIK72x72x72TN72x72x0_a1_b0
   #define NBmm_bX ATL_sJIK72x72x72TN72x72x0_a1_bX

#endif
