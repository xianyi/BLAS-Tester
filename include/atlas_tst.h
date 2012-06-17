/*
 *             Automatically Tuned Linear Algebra Software v3.9.16
 *                    (C) Copyright 1999 R. Clint Whaley
 *
 * Code contributers : R. Clint Whaley, Antoine P. Petitet
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

#ifndef ATLAS_TST_H
   #define ATLAS_TST_H

#include "atlas_enum.h"
#include "atlas_misc.h"

double time00();
#ifndef UseCRand
   void ATL_srand(int iseed);
   int ATL_rand(void);
   #define dumb_seed(iseed_) ATL_srand(iseed_)
   #define dumb_rand() ( 0.5 - ((double)ATL_rand())/(2147483648.0) )
#else
   #define dumb_seed(iseed_) srand(iseed_)
   #ifndef RAND_MAX  /* rather dangerous non-ansi workaround */
      #define RAND_MAX ((unsigned long)(1<<30))
   #endif
   #define dumb_rand() ( 0.5 - ((double)rand())/((double)RAND_MAX) )
#endif

void OPENBLAS_ststsqtran(const int N, float *A, const int lda);
void OPENBLAS_sgeprint
   (char *mat, const int M, const int N, const float *A, const int lda);

float OPENBLAS_sgediffnrm1
   (const int M, const int N, const float *A, const int lda,
    const float *B, const int ldb);
float OPENBLAS_shediffnrm
   (const enum ATLAS_ORDER Order, const enum ATLAS_UPLO Uplo, const int N,
    const float *A0, const int ld0, const float *A1, const int ld1);
float OPENBLAS_sinfnrm(const int N, const float *X, const int incX);
float OPENBLAS_sgenrm1
   (const int M, const int N, const float *A, const int lda);
float OPENBLAS_strnrm1
   (const enum ATLAS_UPLO Upper, const enum ATLAS_DIAG Diag, const int N,
    const float *A, const int lda);
float OPENBLAS_sgbnrm1
   (const int M, const int N, const int KL, const int KU,
    const float *A, const int lda);
float OPENBLAS_stpnrm1
   (const enum ATLAS_UPLO UPLO, const enum ATLAS_DIAG DIAG, const int N,
    const float *A);
float OPENBLAS_stbnrm1
   (const enum ATLAS_UPLO UPLO, const enum ATLAS_DIAG DIAG,
    const int N, const int K, const float *A, const int LDA);
float OPENBLAS_ssynrm
   (const enum ATLAS_UPLO UPLO, const int N, const float *A, const int LDA);
float OPENBLAS_shenrm
   (const enum ATLAS_UPLO UPLO, const int N, const float *A, const int LDA);
float OPENBLAS_sspnrm
   (const enum ATLAS_UPLO UPLO, const int N, const float *A);
float OPENBLAS_shpnrm
   (const enum ATLAS_UPLO UPLO, const int N, const float *A);
float OPENBLAS_ssbnrm
   (const enum ATLAS_UPLO UPLO, const int N, const int K,
    const float *A, const int LDA);
float OPENBLAS_shbnrm
   (const enum ATLAS_UPLO UPLO, const int N, const int K,
    const float *A, const int LDA);

void OPENBLAS_sgefillgap(const int M, const int N, float *A, const int lda0);
int OPENBLAS_sgechkgap(const int M0, const int N, float *A, const int lda0);
void OPENBLAS_strgen(const enum ATLAS_UPLO Uplo, const enum ATLAS_DIAG Diag,
                const int N, float *A, const int lda, const int seed);
void OPENBLAS_sgegen(const int M0, const int N, float *A, const int lda,
                const int seed);
float OPENBLAS_sepsilon(void);
void OPENBLAS_svdiff(const int N, const float *X, const int incX,
                const float *Y, const int incY, float *Z, const int incZ);
void OPENBLAS_sgediff(const int M, const int N, const float *A, const int lda,
                 const float *B, const int ldb, float *C, const int ldc);
void OPENBLAS_dtstsqtran(const int N, double *A, const int lda);
void OPENBLAS_dgeprint
   (char *mat, const int M, const int N, const double *A, const int lda);

double OPENBLAS_dgediffnrm1
   (const int M, const int N, const double *A, const int lda,
    const double *B, const int ldb);
double OPENBLAS_dhediffnrm
   (const enum ATLAS_ORDER Order, const enum ATLAS_UPLO Uplo, const int N,
    const double *A0, const int ld0, const double *A1, const int ld1);
double OPENBLAS_dinfnrm(const int N, const double *X, const int incX);
double OPENBLAS_dgenrm1
   (const int M, const int N, const double *A, const int lda);
double OPENBLAS_dtrnrm1
   (const enum ATLAS_UPLO Upper, const enum ATLAS_DIAG Diag, const int N,
    const double *A, const int lda);
double OPENBLAS_dgbnrm1
   (const int M, const int N, const int KL, const int KU,
    const double *A, const int lda);
double OPENBLAS_dtpnrm1
   (const enum ATLAS_UPLO UPLO, const enum ATLAS_DIAG DIAG, const int N,
    const double *A);
double OPENBLAS_dtbnrm1
   (const enum ATLAS_UPLO UPLO, const enum ATLAS_DIAG DIAG,
    const int N, const int K, const double *A, const int LDA);
double OPENBLAS_dsynrm
   (const enum ATLAS_UPLO UPLO, const int N, const double *A, const int LDA);
double OPENBLAS_dhenrm
   (const enum ATLAS_UPLO UPLO, const int N, const double *A, const int LDA);
double OPENBLAS_dspnrm
   (const enum ATLAS_UPLO UPLO, const int N, const double *A);
double OPENBLAS_dhpnrm
   (const enum ATLAS_UPLO UPLO, const int N, const double *A);
double OPENBLAS_dsbnrm
   (const enum ATLAS_UPLO UPLO, const int N, const int K,
    const double *A, const int LDA);
double OPENBLAS_dhbnrm
   (const enum ATLAS_UPLO UPLO, const int N, const int K,
    const double *A, const int LDA);

void OPENBLAS_dgefillgap(const int M, const int N, double *A, const int lda0);
int OPENBLAS_dgechkgap(const int M0, const int N, double *A, const int lda0);
void OPENBLAS_dtrgen(const enum ATLAS_UPLO Uplo, const enum ATLAS_DIAG Diag,
                const int N, double *A, const int lda, const int seed);
void OPENBLAS_dgegen(const int M0, const int N, double *A, const int lda,
                const int seed);
double OPENBLAS_depsilon(void);
void OPENBLAS_dvdiff(const int N, const double *X, const int incX,
                const double *Y, const int incY, double *Z, const int incZ);
void OPENBLAS_dgediff(const int M, const int N, const double *A, const int lda,
                 const double *B, const int ldb, double *C, const int ldc);
void OPENBLAS_ctstsqtran(const int N, float *A, const int lda);
void OPENBLAS_cgeprint
   (char *mat, const int M, const int N, const float *A, const int lda);

float OPENBLAS_cgediffnrm1
   (const int M, const int N, const float *A, const int lda,
    const float *B, const int ldb);
float OPENBLAS_chediffnrm
   (const enum ATLAS_ORDER Order, const enum ATLAS_UPLO Uplo, const int N,
    const float *A0, const int ld0, const float *A1, const int ld1);
float OPENBLAS_cinfnrm(const int N, const float *X, const int incX);
float OPENBLAS_cgenrm1
   (const int M, const int N, const float *A, const int lda);
float OPENBLAS_ctrnrm1
   (const enum ATLAS_UPLO Upper, const enum ATLAS_DIAG Diag, const int N,
    const float *A, const int lda);
float OPENBLAS_cgbnrm1
   (const int M, const int N, const int KL, const int KU,
    const float *A, const int lda);
float OPENBLAS_ctpnrm1
   (const enum ATLAS_UPLO UPLO, const enum ATLAS_DIAG DIAG, const int N,
    const float *A);
float OPENBLAS_ctbnrm1
   (const enum ATLAS_UPLO UPLO, const enum ATLAS_DIAG DIAG,
    const int N, const int K, const float *A, const int LDA);
float OPENBLAS_csynrm
   (const enum ATLAS_UPLO UPLO, const int N, const float *A, const int LDA);
float OPENBLAS_chenrm
   (const enum ATLAS_UPLO UPLO, const int N, const float *A, const int LDA);
float OPENBLAS_cspnrm
   (const enum ATLAS_UPLO UPLO, const int N, const float *A);
float OPENBLAS_chpnrm
   (const enum ATLAS_UPLO UPLO, const int N, const float *A);
float OPENBLAS_csbnrm
   (const enum ATLAS_UPLO UPLO, const int N, const int K,
    const float *A, const int LDA);
float OPENBLAS_chbnrm
   (const enum ATLAS_UPLO UPLO, const int N, const int K,
    const float *A, const int LDA);

void OPENBLAS_cgefillgap(const int M, const int N, float *A, const int lda0);
int OPENBLAS_cgechkgap(const int M0, const int N, float *A, const int lda0);
void OPENBLAS_ctrgen(const enum ATLAS_UPLO Uplo, const enum ATLAS_DIAG Diag,
                const int N, float *A, const int lda, const int seed);
void OPENBLAS_cgegen(const int M0, const int N, float *A, const int lda,
                const int seed);
float OPENBLAS_cepsilon(void);
void OPENBLAS_cvdiff(const int N, const float *X, const int incX,
                const float *Y, const int incY, float *Z, const int incZ);
void OPENBLAS_cgediff(const int M, const int N, const float *A, const int lda,
                 const float *B, const int ldb, float *C, const int ldc);
void OPENBLAS_ztstsqtran(const int N, double *A, const int lda);
void OPENBLAS_zgeprint
   (char *mat, const int M, const int N, const double *A, const int lda);

double OPENBLAS_zgediffnrm1
   (const int M, const int N, const double *A, const int lda,
    const double *B, const int ldb);
double OPENBLAS_zhediffnrm
   (const enum ATLAS_ORDER Order, const enum ATLAS_UPLO Uplo, const int N,
    const double *A0, const int ld0, const double *A1, const int ld1);
double OPENBLAS_zinfnrm(const int N, const double *X, const int incX);
double OPENBLAS_zgenrm1
   (const int M, const int N, const double *A, const int lda);
double OPENBLAS_ztrnrm1
   (const enum ATLAS_UPLO Upper, const enum ATLAS_DIAG Diag, const int N,
    const double *A, const int lda);
double OPENBLAS_zgbnrm1
   (const int M, const int N, const int KL, const int KU,
    const double *A, const int lda);
double OPENBLAS_ztpnrm1
   (const enum ATLAS_UPLO UPLO, const enum ATLAS_DIAG DIAG, const int N,
    const double *A);
double OPENBLAS_ztbnrm1
   (const enum ATLAS_UPLO UPLO, const enum ATLAS_DIAG DIAG,
    const int N, const int K, const double *A, const int LDA);
double OPENBLAS_zsynrm
   (const enum ATLAS_UPLO UPLO, const int N, const double *A, const int LDA);
double OPENBLAS_zhenrm
   (const enum ATLAS_UPLO UPLO, const int N, const double *A, const int LDA);
double OPENBLAS_zspnrm
   (const enum ATLAS_UPLO UPLO, const int N, const double *A);
double OPENBLAS_zhpnrm
   (const enum ATLAS_UPLO UPLO, const int N, const double *A);
double OPENBLAS_zsbnrm
   (const enum ATLAS_UPLO UPLO, const int N, const int K,
    const double *A, const int LDA);
double OPENBLAS_zhbnrm
   (const enum ATLAS_UPLO UPLO, const int N, const int K,
    const double *A, const int LDA);

void OPENBLAS_zgefillgap(const int M, const int N, double *A, const int lda0);
int OPENBLAS_zgechkgap(const int M0, const int N, double *A, const int lda0);
void OPENBLAS_ztrgen(const enum ATLAS_UPLO Uplo, const enum ATLAS_DIAG Diag,
                const int N, double *A, const int lda, const int seed);
void OPENBLAS_zgegen(const int M0, const int N, double *A, const int lda,
                const int seed);
double OPENBLAS_zepsilon(void);
void OPENBLAS_zvdiff(const int N, const double *X, const int incX,
                const double *Y, const int incY, double *Z, const int incZ);
void OPENBLAS_zgediff(const int M, const int N, const double *A, const int lda,
                 const double *B, const int ldb, double *C, const int ldc);

/*
 * Wrappers so that C can call F77 LAPACK
 */
int ATL_sf77getri
   (const enum ATLAS_ORDER, const int, float*, const int, int*,
    float*, int*);
int ATL_sf77getrf
   (const enum ATLAS_ORDER, const int, const int, float*, const int, int*);
int ATL_sf77potrf(const enum ATLAS_UPLO, const int, float*, const int);
int ATL_sf77lauum(const enum ATLAS_UPLO, const int, float*, const int);
int ATL_sf77trtri(const enum ATLAS_UPLO, const enum ATLAS_DIAG, const int,
                  float*, const int);
int ATL_sf77posv(const enum ATLAS_UPLO, const int, const int, float*, const int, float*, const int);
int ATL_sf77gesv(const int, const int, float*, const int, int*, float*, const int);
int ATL_sf77gels(const enum ATLAS_TRANS, const int, const int, const int, float*, const int, float*, const int);
int ATL_df77getri
   (const enum ATLAS_ORDER, const int, double*, const int, int*,
    double*, int*);
int ATL_df77getrf
   (const enum ATLAS_ORDER, const int, const int, double*, const int, int*);
int ATL_df77potrf(const enum ATLAS_UPLO, const int, double*, const int);
int ATL_df77lauum(const enum ATLAS_UPLO, const int, double*, const int);
int ATL_df77trtri(const enum ATLAS_UPLO, const enum ATLAS_DIAG, const int,
                  double*, const int);
int ATL_df77posv(const enum ATLAS_UPLO, const int, const int, double*, const int, double*, const int);
int ATL_df77gesv(const int, const int, double*, const int, int*, double*, const int);
int ATL_df77gels(const enum ATLAS_TRANS, const int, const int, const int, double*, const int, double*, const int);
int ATL_cf77getri
   (const enum ATLAS_ORDER, const int, float*, const int, int*,
    float*, int*);
int ATL_cf77getrf
   (const enum ATLAS_ORDER, const int, const int, float*, const int, int*);
int ATL_cf77potrf(const enum ATLAS_UPLO, const int, float*, const int);
int ATL_cf77lauum(const enum ATLAS_UPLO, const int, float*, const int);
int ATL_cf77trtri(const enum ATLAS_UPLO, const enum ATLAS_DIAG, const int,
                  float*, const int);
int ATL_cf77posv(const enum ATLAS_UPLO, const int, const int, float*, const int, float*, const int);
int ATL_cf77gesv(const int, const int, float*, const int, int*, float*, const int);
int ATL_cf77gels(const enum ATLAS_TRANS, const int, const int, const int, float*, const int, float*, const int);
int ATL_zf77getri
   (const enum ATLAS_ORDER, const int, double*, const int, int*,
    double*, int*);
int ATL_zf77getrf
   (const enum ATLAS_ORDER, const int, const int, double*, const int, int*);
int ATL_zf77potrf(const enum ATLAS_UPLO, const int, double*, const int);
int ATL_zf77lauum(const enum ATLAS_UPLO, const int, double*, const int);
int ATL_zf77trtri(const enum ATLAS_UPLO, const enum ATLAS_DIAG, const int,
                  double*, const int);
int ATL_zf77posv(const enum ATLAS_UPLO, const int, const int, double*, const int, double*, const int);
int ATL_zf77gesv(const int, const int, double*, const int, int*, double*, const int);
int ATL_zf77gels(const enum ATLAS_TRANS, const int, const int, const int, double*, const int, double*, const int);

/*
 * =====================================================================
 * Prototypes for C-callable F77 interface to misc functions
 * =====================================================================
 */

float OPENBLAS_sinfnrm(const int N, const float *X, const int incX);
double OPENBLAS_dinfnrm(const int N, const double *X, const int incX);
float OPENBLAS_cinfnrm(const int N, const float *X, const int incX);
double OPENBLAS_zinfnrm(const int N, const double *X, const int incX);



/*
 * =====================================================================
 * Prototypes for C-callable F77 interface to the Level 1 BLAS routines
 * =====================================================================
 */
void       OPENBLAS_sf77rotg
( float  *,        float  *,        float  *,        float  * );
void       OPENBLAS_df77rotg
( double *,        double *,        double *,        double * );
void       OPENBLAS_cf77rotg
( float  *,        const float  *,  float  *,        float  * );
void       OPENBLAS_zf77rotg
( double *,        const double *,  double *,        double * );

void       OPENBLAS_sf77rotmg
( float  *,        float  *,        float  *,        const float,
  float  * );
void       OPENBLAS_df77rotmg
( double *,        double *,        double *,        const double,
  double * );

float      OPENBLAS_sf77nrm2
( const int,       const float  *,  const int );
double     OPENBLAS_df77nrm2
( const int,       const double *,  const int );
float      OPENBLAS_scf77nrm2
( const int,       const float  *,  const int );
double     OPENBLAS_dzf77nrm2
( const int,       const double *,  const int );

float      OPENBLAS_sf77asum
( const int,       const float  *,  const int );
double     OPENBLAS_df77asum
( const int,       const double *,  const int );
float      OPENBLAS_scf77asum
( const int,       const float  *,  const int );
double     OPENBLAS_dzf77asum
( const int,       const double *,  const int );

int        OPENBLAS_isf77amax
( const int,       const float  *,  const int );
int        OPENBLAS_idf77amax
( const int,       const double *,  const int );
int        OPENBLAS_icf77amax
( const int,       const float  *,  const int );
int        OPENBLAS_izf77amax
( const int,       const double *,  const int );

void       OPENBLAS_sf77scal
( const int,       const float,     float  *,        const int );
void       OPENBLAS_df77scal
( const int,       const double,    double *,        const int );
void       OPENBLAS_cf77scal
( const int,       const float  *,  float  *,        const int );
void       OPENBLAS_zf77scal
( const int,       const double *,  double *,        const int );
void       OPENBLAS_csf77scal
( const int,       const float,     float  *,        const int );
void       OPENBLAS_zdf77scal
( const int,       const double,    double *,        const int );

void OPENBLAS_sf77set(const int, const float, float*, const int);
void OPENBLAS_df77set(const int, const double, double*, const int);
void OPENBLAS_cf77set(const int, const float*, float*, const int);
void OPENBLAS_zf77set(const int, const double*, double*, const int);
void OPENBLAS_sf77axpby
   (const int, const float, const float*, const int, const float,
    float*, const int);
void OPENBLAS_df77axpby
   (const int, const double, const double*, const int, const double,
    double*, const int);
void OPENBLAS_cf77axpby
   (const int, const float*, const float*, const int, const float*,
    float*, const int);
void OPENBLAS_zf77axpby
   (const int, const double*, const double*, const int, const double*,
    double*, const int);

void       OPENBLAS_sf77axpy
( const int,       const float,     const float  *,  const int,
  float  *,        const int );
void       OPENBLAS_df77axpy
( const int,       const double,    const double *,  const int,
  double *,        const int );
void       OPENBLAS_cf77axpy
( const int,       const float  *,  const float  *,  const int,
  float  *,        const int );
void       OPENBLAS_zf77axpy
( const int,       const double *,  const double *,  const int,
  double *,        const int );

void       OPENBLAS_sf77copy
( const int,       const float  *,  const int,       float  *,
  const int );
void       OPENBLAS_df77copy
( const int,       const double *,  const int,       double *,
  const int );
void       OPENBLAS_cf77copy
( const int,       const float  *,  const int,       float  *,
  const int );
void       OPENBLAS_zf77copy
( const int,       const double *,  const int,       double *,
  const int );

void       OPENBLAS_sf77swap
( const int,       float  *,        const int,       float  *,
  const int );
void       OPENBLAS_df77swap
( const int,       double *,        const int,       double *,
  const int );
void       OPENBLAS_cf77swap
( const int,       float  *,        const int,       float  *,
  const int );
void       OPENBLAS_zf77swap
( const int,       double *,        const int,       double *,
  const int );

void       OPENBLAS_sf77rot
( const int,       float  *,        const int,       float  *,
  const int,       const float,     const float  );
void       OPENBLAS_df77rot
( const int,       double *,        const int,       double *,
  const int,       const double,    const double );
void       OPENBLAS_csf77rot
( const int,       float  *,        const int,       float  *,
  const int,       const float,     const float  );
void       OPENBLAS_zdf77rot
( const int,       double *,        const int,       double *,
  const int,       const double,    const double );

void       OPENBLAS_sf77rotm
( const int,       float  *,        const int,       float  *,
  const int,       const float  * );
void       OPENBLAS_df77rotm
( const int,       double *,        const int,       double *,
  const int,       const double * );

float      OPENBLAS_sf77dot
( const int,       const float  *,  const int,       const float  *,
  const int );
double     OPENBLAS_df77dot
( const int,       const double *,  const int,       const double *,
  const int );
void       OPENBLAS_cf77dotu_sub
( const int,       const float  *,  const int,       const float  *,
  const int,       float * );
void       OPENBLAS_cf77dotc_sub
( const int,       const float  *,  const int,       const float  *,
  const int,       float * );
void       OPENBLAS_zf77dotu_sub
( const int,       const double *,  const int,       const double *,
  const int,       double * );
void       OPENBLAS_zf77dotc_sub
( const int,       const double *,  const int,       const double *,
  const int,       double * );

float      OPENBLAS_sdsf77dot
( const int,       const float,     const float  *,  const int,
  const float  *,  const int );
double     OPENBLAS_dsf77dot
( const int,       const float  *,  const int,       const float  *,
  const int );

float      ATL_sdsf77dot
( const int,       const float,     const float  *,  const int,
  const float  *,  const int );
double     ATL_dsf77dot
( const int,       const float  *,  const int,       const float  *,
  const int );

/*
 * =====================================================================
 * Prototypes for C-callable F77 interface to the Level 2 BLAS routines
 * =====================================================================
 */
void       OPENBLAS_sf77gemv
( const enum ATLAS_TRANS,           const int,       const int,
  const float,     const float  *,  const int,       const float  *,
  const int,       const float,     float  *,        const int );
void       OPENBLAS_df77gemv
( const enum ATLAS_TRANS,           const int,       const int,
  const double,    const double *,  const int,       const double *,
  const int,       const double,    double *,        const int );
void       OPENBLAS_cf77gemv
( const enum ATLAS_TRANS,           const int,       const int,
  const float  *,  const float  *,  const int,       const float  *,
  const int,       const float  *,  float  *,        const int );
void       OPENBLAS_zf77gemv
( const enum ATLAS_TRANS,           const int,       const int,
  const double *,  const double *,  const int,       const double *,
  const int,       const double *,  double *,        const int );

void       OPENBLAS_sf77gbmv
( const enum ATLAS_TRANS,           const int,       const int,
  const int,       const int,       const float,     const float  *,
  const int,       const float  *,  const int,       const float,
  float  *,        const int );
void       OPENBLAS_df77gbmv
( const enum ATLAS_TRANS,           const int,       const int,
  const int,       const int,       const double,    const double *,
  const int,       const double *,  const int,       const double,
  double *,        const int );
void       OPENBLAS_cf77gbmv
( const enum ATLAS_TRANS,           const int,       const int,
  const int,       const int,       const float  *,  const float  *,
  const int,       const float  *,  const int,       const float  *,
  float  *,        const int );
void       OPENBLAS_zf77gbmv
( const enum ATLAS_TRANS,           const int,       const int,
  const int,       const int,       const double *,  const double *,
  const int,       const double *,  const int,       const double *,
  double *,        const int );

void       OPENBLAS_sf77trmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const float  *,
  const int,       float  *,        const int );
void       OPENBLAS_df77trmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const double *,
  const int,       double *,        const int );
void       OPENBLAS_cf77trmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const float  *,
  const int,       float  *,        const int );
void       OPENBLAS_zf77trmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const double *,
  const int,       double *,        const int );

void       OPENBLAS_sf77tbmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const int,
  const float  *,  const int,       float  *,        const int );
void       OPENBLAS_df77tbmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const int,
  const double *,  const int,       double *,        const int );
void       OPENBLAS_cf77tbmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const int,
  const float  *,  const int,       float  *,        const int );
void       OPENBLAS_zf77tbmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const int,
  const double *,  const int,       double *,        const int );

void       OPENBLAS_sf77tpmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const float  *,
  float  *,        const int );
void       OPENBLAS_df77tpmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const double *,
  double *,        const int );
void       OPENBLAS_cf77tpmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const float  *,
  float  *,        const int );
void       OPENBLAS_zf77tpmv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const double *,
  double *,        const int );

void       OPENBLAS_sf77trsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const float  *,
  const int,       float  *,        const int );
void       OPENBLAS_df77trsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const double *,
  const int,       double *,        const int );
void       OPENBLAS_cf77trsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const float  *,
  const int,       float  *,        const int );
void       OPENBLAS_zf77trsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const double *,
  const int,       double *,        const int );

void       OPENBLAS_sf77tbsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const int,
  const float  *,  const int,       float  *,        const int );
void       OPENBLAS_df77tbsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const int,
  const double *,  const int,       double *,        const int );
void       OPENBLAS_cf77tbsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const int,
  const float  *,  const int,       float  *,        const int );
void       OPENBLAS_zf77tbsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const int,
  const double *,  const int,       double *,        const int );

void       OPENBLAS_sf77tpsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const float  *,
  float  *,        const int );
void       OPENBLAS_df77tpsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const double *,
  double *,        const int );
void       OPENBLAS_cf77tpsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const float  *,
  float  *,        const int );
void       OPENBLAS_zf77tpsv
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const enum ATLAS_DIAG,            const int,       const double *,
  double *,        const int );

void       OPENBLAS_sf77symv
( const enum ATLAS_UPLO,            const int,       const float,
  const float  *,  const int,       const float  *,  const int,
  const float,     float  *,        const int );
void       OPENBLAS_df77symv
( const enum ATLAS_UPLO,            const int,       const double,
  const double *,  const int,       const double *,  const int,
  const double,    double *,        const int );

void       OPENBLAS_cf77hemv
( const enum ATLAS_UPLO,            const int,       const float  *,
  const float  *,  const int,       const float  *,  const int,
  const float  *,  float  *,        const int );
void       OPENBLAS_zf77hemv
( const enum ATLAS_UPLO,            const int,       const double *,
  const double *,  const int,       const double *,  const int,
  const double *,  double *,        const int );

void       OPENBLAS_sf77sbmv
( const enum ATLAS_UPLO,            const int,       const int,
  const float,     const float  *,  const int,       const float  *,
  const int,       const float,     float  *,        const int );
void       OPENBLAS_df77sbmv
( const enum ATLAS_UPLO,            const int,       const int,
  const double,    const double *,  const int,       const double *,
  const int,       const double,    double *,        const int );
void       OPENBLAS_cf77hbmv
( const enum ATLAS_UPLO,            const int,       const int,
  const float  *,  const float  *,  const int,       const float  *,
  const int,       const float  *,  float  *,        const int );
void       OPENBLAS_zf77hbmv
( const enum ATLAS_UPLO,            const int,       const int,
  const double *,  const double *,  const int,       const double *,
  const int,       const double *,  double *,        const int );

void       OPENBLAS_sf77spmv
( const enum ATLAS_UPLO,            const int,       const float,
  const float  *,  const float  *,  const int,       const float,
  float  *,        const int );
void       OPENBLAS_df77spmv
( const enum ATLAS_UPLO,            const int,       const double,
  const double *,  const double *,  const int,       const double,
  double *,        const int );
void       OPENBLAS_cf77hpmv
( const enum ATLAS_UPLO,            const int,       const float  *,
  const float  *,  const float  *,  const int,       const float  *,
  float  *,        const int );
void       OPENBLAS_zf77hpmv
( const enum ATLAS_UPLO,            const int,       const double *,
  const double *,  const double *,  const int,       const double *,
  double *,        const int );

void       OPENBLAS_sf77ger
( const int,       const int,       const float,     const float  *,
  const int,       const float  *,  const int,       float  *,
  const int );
void       OPENBLAS_df77ger
( const int,       const int,       const double,    const double *,
  const int,       const double *,  const int,       double *,
  const int );
void       OPENBLAS_cf77gerc
( const int,       const int,       const float  *,  const float  *,
  const int,       const float  *,  const int,       float  *,
  const int );
void       OPENBLAS_cf77geru
( const int,       const int,       const float  *,  const float  *,
  const int,       const float  *,  const int,       float  *,
  const int );
void       OPENBLAS_zf77gerc
( const int,       const int,       const double *,  const double *,
  const int,       const double *,  const int,       double *,
  const int );
void       OPENBLAS_zf77geru
( const int,       const int,       const double *,  const double *,
  const int,       const double *,  const int,       double *,
  const int );

void       OPENBLAS_sf77syr
( const enum ATLAS_UPLO,            const int,       const float,
  const float  *,  const int,       float  *,        const int );
void       OPENBLAS_df77syr
( const enum ATLAS_UPLO,            const int,       const double,
  const double *,  const int,       double *,        const int );
void       OPENBLAS_cf77her
( const enum ATLAS_UPLO,            const int,       const float,
  const float  *,  const int,       float  *,        const int );
void       OPENBLAS_zf77her
( const enum ATLAS_UPLO,            const int,       const double,
  const double *,  const int,       double *,        const int );

void       OPENBLAS_sf77spr
( const enum ATLAS_UPLO,            const int,       const float,
  const float  *,  const int,       float  * );
void       OPENBLAS_df77spr
( const enum ATLAS_UPLO,            const int,       const double,
  const double *,  const int,       double * );
void       OPENBLAS_cf77hpr
( const enum ATLAS_UPLO,            const int,       const float,
  const float  *,  const int,       float  * );
void       OPENBLAS_zf77hpr
( const enum ATLAS_UPLO,            const int,       const double,
  const double *,  const int,       double * );

void       OPENBLAS_sf77syr2
( const enum ATLAS_UPLO,            const int,       const float,
  const float  *,  const int,       const float  *,  const int,
  float  *,        const int );
void       OPENBLAS_df77syr2
( const enum ATLAS_UPLO,            const int,       const double,
  const double *,  const int,       const double *,  const int,
  double *,        const int );
void       OPENBLAS_cf77her2
( const enum ATLAS_UPLO,            const int,       const float  *,
  const float  *,  const int,       const float  *,  const int,
  float  *,        const int );
void       OPENBLAS_zf77her2
( const enum ATLAS_UPLO,            const int,       const double *,
  const double *,  const int,       const double *,  const int,
  double *,        const int );

void       OPENBLAS_sf77spr2
( const enum ATLAS_UPLO,            const int,       const float,
  const float  *,  const int,       const float  *,  const int,
  float  * );
void       OPENBLAS_df77spr2
( const enum ATLAS_UPLO,            const int,       const double,
  const double *,  const int,       const double *,  const int,
  double * );
void       OPENBLAS_cf77hpr2
( const enum ATLAS_UPLO,            const int,       const float  *,
  const float  *,  const int,       const float  *,  const int,
  float  * );
void       OPENBLAS_zf77hpr2
( const enum ATLAS_UPLO,            const int,       const double *,
  const double *,  const int,       const double *,  const int,
  double * );
/*
 * =====================================================================
 * Prototypes for C-callable F77 interface to the Level 3 BLAS routines
 * =====================================================================
 */
void       OPENBLAS_sf77gemm
( const enum ATLAS_TRANS,           const enum ATLAS_TRANS,
  const int,       const int,       const int,       const float,
  const float  *,  const int,       const float  *,  const int,
  const float,     float  *,        const int );
void       OPENBLAS_df77gemm
( const enum ATLAS_TRANS,           const enum ATLAS_TRANS,
  const int,       const int,       const int,       const double,
  const double *,  const int,       const double *,  const int,
  const double,    double *,        const int );
void       OPENBLAS_cf77gemm
( const enum ATLAS_TRANS,           const enum ATLAS_TRANS,
  const int,       const int,       const int,       const float  *,
  const float  *,  const int,       const float  *,  const int,
  const float  *,  float  *,        const int );
void       OPENBLAS_zf77gemm
( const enum ATLAS_TRANS,           const enum ATLAS_TRANS,
  const int,       const int,       const int,       const double *,
  const double *,  const int,       const double *,  const int,
  const double *,  double *,        const int );

void       OPENBLAS_cf77hemm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const int,       const int,       const float  *,  const float  *,
  const int,       const float  *,  const int,       const float  *,
  float  *,        const int );
void       OPENBLAS_zf77hemm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const int,       const int,       const double *,  const double *,
  const int,       const double *,  const int,       const double *,
  double *,        const int );

void       OPENBLAS_cf77herk
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const float,     const float  *,
  const int,       const float,     float  *,        const int );
void       OPENBLAS_zf77herk
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const double,    const double *,
  const int,       const double,    double *,        const int );

void       OPENBLAS_cf77her2k
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const float  *,  const float  *,
  const int,       const float  *,  const int,       const float,
  float  *,        const int );
void       OPENBLAS_zf77her2k
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const double *,  const double *,
  const int,       const double *,  const int,       const double,
  double *,        const int );

void       OPENBLAS_sf77symm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const int,       const int,       const float,     const float  *,
  const int,       const float  *,  const int,       const float,
  float  *,        const int );
void       OPENBLAS_df77symm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const int,       const int,       const double,    const double *,
  const int,       const double *,  const int,       const double,
  double *,        const int );
void       OPENBLAS_cf77symm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const int,       const int,       const float  *,  const float  *,
  const int,       const float  *,  const int,       const float  *,
  float  *,        const int );
void       OPENBLAS_zf77symm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const int,       const int,       const double *,  const double *,
  const int,       const double *,  const int,       const double *,
  double *,        const int );

void       OPENBLAS_sf77syrk
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const float,     const float  *,
  const int,       const float,     float  *,        const int );
void       OPENBLAS_df77syrk
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const double,    const double *,
  const int,       const double,    double *,        const int );
void       OPENBLAS_cf77syrk
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const float  *,  const float  *,
  const int,       const float  *,  float  *,        const int );
void       OPENBLAS_zf77syrk
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const double *,  const double *,
  const int,       const double *,  double *,        const int );

void       OPENBLAS_sf77syr2k
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const float,     const float  *,
  const int,       const float  *,  const int,       const float,
  float  *,        const int );
void       OPENBLAS_df77syr2k
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const double,    const double *,
  const int,       const double *,  const int,       const double,
  double *,        const int );
void       OPENBLAS_cf77syr2k
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const float  *,  const float  *,
  const int,       const float  *,  const int,       const float  *,
  float  *,        const int );
void       OPENBLAS_zf77syr2k
( const enum ATLAS_UPLO,            const enum ATLAS_TRANS,
  const int,       const int,       const double *,  const double *,
  const int,       const double *,  const int,       const double *,
  double *,        const int );

void       OPENBLAS_sf77trmm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const enum ATLAS_TRANS,           const enum ATLAS_DIAG,
  const int,       const int,       const float,     const float  *,
  const int,       float  *,        const int );
void       OPENBLAS_df77trmm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const enum ATLAS_TRANS,           const enum ATLAS_DIAG,
  const int,       const int,       const double,    const double *,
  const int,       double *,        const int );
void       OPENBLAS_cf77trmm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const enum ATLAS_TRANS,           const enum ATLAS_DIAG,
  const int,       const int,       const float  *,  const float  *,
  const int,       float  *,        const int );
void       OPENBLAS_zf77trmm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const enum ATLAS_TRANS,           const enum ATLAS_DIAG,
  const int,       const int,       const double *,  const double *,
  const int,       double *,        const int );

void       OPENBLAS_sf77trsm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const enum ATLAS_TRANS,           const enum ATLAS_DIAG,
  const int,       const int,       const float,     const float  *,
  const int,       float  *,        const int );
void       OPENBLAS_df77trsm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const enum ATLAS_TRANS,           const enum ATLAS_DIAG,
  const int,       const int,       const double,    const double *,
  const int,       double *,        const int );
void       OPENBLAS_cf77trsm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const enum ATLAS_TRANS,           const enum ATLAS_DIAG,
  const int,       const int,       const float  *,  const float  *,
  const int,       float  *,        const int );
void       OPENBLAS_zf77trsm
( const enum ATLAS_SIDE,            const enum ATLAS_UPLO,
  const enum ATLAS_TRANS,           const enum ATLAS_DIAG,
  const int,       const int,       const double *,  const double *,
  const int,       double *,        const int );

#endif
