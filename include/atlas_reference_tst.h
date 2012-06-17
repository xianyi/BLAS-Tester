#ifndef _ATL_REFERENCE_TST_H_
#define _ATL_REFERENCE_TST_H_

#include "atlas_misc.h"

/*
==========================================================
             BLAS Level 1
==========================================================
*/


/*
 for ATL_f77asumf
*/
#ifdef TREAL
TYPE Mjoin( PATL, f77asumf )
#else
TYPE Mjoin( PATLU, Mjoin( PRE, f77asumf ) )
#endif
(
   const int                 N,
   const TYPE                * X,
   const int                 INCX
);

/*
 for ATL_f77dotf
*/

TYPE Mjoin( PATL, f77dotf )
(
   const int                 N,
   const TYPE                * X,
   const int                 INCX,
   const TYPE                * Y,
   const int                 INCY
);

/*
 for ATL_f77nrm2f
*/
#ifdef TREAL
TYPE Mjoin( PATL, f77nrm2f )
#else
TYPE Mjoin( PATLU, Mjoin( PRE, f77nrm2f ) )
#endif
(
   const int                 N,
   const TYPE                * X,
   const int                 INCX
);

/*
  for ?dsdot
*/
float ATL_sdsf77dotf
(
   const int                  N,
   const float                B,
   const float                * X,
   const int                  INCX,
   const float                * Y,
   const int                  INCY
);

double ATL_dsf77dotf
(
   const int                  N,
   const float                * X,
   const int                  INCX,
   const float                * Y,
   const int                  INCY
);

/*
  for axpy
*/
void Mjoin( PATL, f77axpyf )
(
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * X,
   const int                 INCX,
   TYPE                      * Y,
   const int                 INCY
);

/*
  for rot
*/

#ifdef TREAL
void Mjoin( PATL, f77rotf )
#else
void Mjoin( PATL, Mjoin( UPR, f77rotf ) )
#endif
(
   const int                 N,
   TYPE                      * X,
   const int                 INCX,
   TYPE                      * Y,
   const int                 INCY,
#ifdef TREAL
   const SCALAR              C,
   const SCALAR              S
#else
   const TYPE                C,
   const TYPE                S
#endif
);

/*
  for scal
*/
void Mjoin( PATL, f77scalf )
(
   const int                 N,
   const SCALAR              ALPHA,
   TYPE                      * X,
   const int                 INCX
);


/*
  for rotmg
*/

void Mjoin( PATL, f77rotmgf )
(
   TYPE                      * D1,
   TYPE                      * D2,
   TYPE                      * X1,
   const SCALAR              Y1,
   TYPE                      * PARAM
);

/*
  for rscal
*/

void Mjoin( PATL, Mjoin( UPR, f77scalf ) )
(
   const int                 N,
   const TYPE                ALPHA,
   TYPE                      * X,
   const int                 INCX
);

/*
==========================================================
                BLAS Level 2
==========================================================
*/

void Mjoin( PATL, f77gemvf )
(
   const enum ATLAS_TRANS    Trans,
   const int                 M,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   const TYPE                * X,
   const int                 INCX,
   const SCALAR              BETA,
   TYPE                      * Y,
   const int                 INCY
 );

void Mjoin( PATL, f77gbmvf )
(
   const enum ATLAS_TRANS    Trans,
   const int                 M,
   const int                 N,
   const int                 KL,
   const int                 KU,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   const TYPE                * X,
   const int                 INCX,
   const SCALAR              BETA,
   TYPE                      * Y,
   const int                 INCY
 );

void Mjoin( PATL, f77sbmvf )
(
   const enum ATLAS_UPLO     UPLO,
   const int                 N,
   const int                 K,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   const TYPE                * X,
   const int                 INCX,
   const SCALAR              BETA,
   TYPE                      * Y,
   const int                 INCY
 );

void Mjoin( PATL, f77spmvf )
(
   const enum ATLAS_UPLO     UPLO,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const TYPE                * X,
   const int                 INCX,
   const SCALAR              BETA,
   TYPE                      * Y,
   const int                 INCY
 );

void Mjoin( PATL, f77symvf )
(
   const enum ATLAS_UPLO     UPLO,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   const TYPE                * X,
   const int                 INCX,
   const SCALAR              BETA,
   TYPE                      * Y,
   const int                 INCY
 );

void Mjoin( PATL, f77hprf )
(
   const enum ATLAS_UPLO     UPLO,
   const int                 N,
   const TYPE                ALPHA,
   const TYPE                * X,
   const int                 INCX,
   TYPE                      * A
 );

void Mjoin( PATL, f77herf )
(
   const enum ATLAS_UPLO     UPLO,
   const int                 N,
   const TYPE                ALPHA,
   const TYPE                * X,
   const int                 INCX,
   TYPE                      * A,
   const int                 LDA
 );


void Mjoin(PATL,f77gerf)(const int M, const int N, const SCALAR alpha0,
            const TYPE *X, const int incX, const TYPE *Y, const int incY,
			 TYPE *A, const int lda);
void Mjoin( PATL, f77sprf )
(
   const enum ATLAS_UPLO     UPLO,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * X,
   const int                 INCX,
   TYPE                      * A
 );

void Mjoin( PATL, f77spr2f )
(
   const enum ATLAS_UPLO     UPLO,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * X,
   const int                 INCX,
   const TYPE                * Y,
   const int                 INCY,
   TYPE                      * A
 );

void Mjoin( PATL, f77syrf )
(
   const enum ATLAS_UPLO     UPLO,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * X,
   const int                 INCX,
   TYPE                      * A,
   const int                 LDA
 );

void Mjoin( PATL, f77syr2f )
(
   const enum ATLAS_UPLO     UPLO,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * X,
   const int                 INCX,
   const TYPE                * Y,
   const int                 INCY,
   TYPE                      * A,
   const int                 LDA
 );



/*
==========================================================
                BLAS Level 3
==========================================================
*/

void Mjoin(PATL,f77gemmf)(const enum ATLAS_TRANS TA, const enum ATLAS_TRANS TB,
             const int M, const int N, const int K, const SCALAR alpha,
             const TYPE *A, const int lda, const TYPE *B, const int ldb,
	      const SCALAR beta, TYPE *C, const int ldc);

void Mjoin( PATL, f77trmmf )
(
   const enum ATLAS_SIDE     SIDE,
   const enum ATLAS_UPLO     UPLO,
   const enum ATLAS_TRANS    TRANS,
   const enum ATLAS_DIAG     DIAG,
   const int                 M,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   TYPE                      * B,
   const int                 LDB
 );

void Mjoin( PATL, f77trsmf )
(
   const enum ATLAS_SIDE     SIDE,
   const enum ATLAS_UPLO     UPLO,
   const enum ATLAS_TRANS    TRANS,
   const enum ATLAS_DIAG     DIAG,
   const int                 M,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   TYPE                      * B,
   const int                 LDB
 );

void Mjoin( PATL, f77syr2kf )
(
   const enum ATLAS_UPLO     UPLO,
   const enum ATLAS_TRANS    TRANS,
   const int                 N,
   const int                 K,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   const TYPE                * B,
   const int                 LDB,
   const SCALAR              BETA,
   TYPE                      * C,
   const int                 LDC
 );

void Mjoin( PATL, f77syrkf )
(
   const enum ATLAS_UPLO     UPLO,
   const enum ATLAS_TRANS    TRANS,
   const int                 N,
   const int                 K,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   const SCALAR              BETA,
   TYPE                      * C,
   const int                 LDC
 );

void Mjoin( PATL, f77symmf )
(
   const enum ATLAS_SIDE     SIDE,
   const enum ATLAS_UPLO     UPLO,
   const int                 M,
   const int                 N,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   const TYPE                * B,
   const int                 LDB,
   const SCALAR              BETA,
   TYPE                      * C,
   const int                 LDC
 );

void Mjoin( PATL, f77herkf )
(
   const enum ATLAS_UPLO     UPLO,
   const enum ATLAS_TRANS    TRANS,
   const int                 N,
   const int                 K,
   const TYPE                ALPHA,
   const TYPE                * A,
   const int                 LDA,
   const TYPE                BETA,
   TYPE                      * C,
   const int                 LDC
 );

void Mjoin( PATL, f77her2kf )
(
   const enum ATLAS_UPLO     UPLO,
   const enum ATLAS_TRANS    TRANS,
   const int                 N,
   const int                 K,
   const SCALAR              ALPHA,
   const TYPE                * A,
   const int                 LDA,
   const TYPE                * B,
   const int                 LDB,
   const TYPE                BETA,
   TYPE                      * C,
   const int                 LDC
 );

#endif
