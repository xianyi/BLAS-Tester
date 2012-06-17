/*
 *             Automatically Tuned Linear Algebra Software v3.9.14
 *                    (C) Copyright 1999 R. Clint Whaley
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

#include "atlas_level2.h"
#include "atlas_kernel2.h"
#ifndef ATLAS_LVL2_H
#define ATLAS_LVL2_H

/*
 * Real kernels
 */
void ATL_sgerk_Mlt16
   (const int M, const int N, const float alpha, const float *X,
    const int incX, const float *Y, const int incY, float *A, const int lda);
void ATL_sgerk_axpy
   (const int M, const int N, const float alpha, const float *X,
    const int incX, const float *Y, const int incY, float *A, const int lda);
void ATL_sgemvS_a1_x1_bX_y1
   (const int M, const int N, const float alpha, const float *A,
    const int lda, const float *X, const int incX, const float beta,
    float *Y, const int incY);
void ATL_sgemvT_a1_x1_bX_y1
   (const int M, const int N, const float alpha, const float *A,
    const int lda, const float *X, const int incX, const float beta,
    float *Y, const int incY);
void ATL_sgemvN_a1_x1_bX_y1
   (const int M, const int N, const float alpha, const float *A,
    const int lda, const float *X, const int incX, const float beta,
    float *Y, const int incY);
void ATL_sgemvS_a1_x1_b1_y1
   (const int M, const int N, const float alpha, const float *A,
    const int lda, const float *X, const int incX, const float beta,
    float *Y, const int incY);
void ATL_sgemvT_a1_x1_b1_y1
   (const int M, const int N, const float alpha, const float *A,
    const int lda, const float *X, const int incX, const float beta,
    float *Y, const int incY);
void ATL_sgemvN_a1_x1_b1_y1
   (const int M, const int N, const float alpha, const float *A,
    const int lda, const float *X, const int incX, const float beta,
    float *Y, const int incY);
void ATL_sgemvS_a1_x1_b0_y1
   (const int M, const int N, const float alpha, const float *A,
    const int lda, const float *X, const int incX, const float beta,
    float *Y, const int incY);
void ATL_sgemvT_a1_x1_b0_y1
   (const int M, const int N, const float alpha, const float *A,
    const int lda, const float *X, const int incX, const float beta,
    float *Y, const int incY);
void ATL_sgemvN_a1_x1_b0_y1
   (const int M, const int N, const float alpha, const float *A,
    const int lda, const float *X, const int incX, const float beta,
    float *Y, const int incY);
void ATL_dgerk_Mlt16
   (const int M, const int N, const double alpha, const double *X,
    const int incX, const double *Y, const int incY, double *A, const int lda);
void ATL_dgerk_axpy
   (const int M, const int N, const double alpha, const double *X,
    const int incX, const double *Y, const int incY, double *A, const int lda);
void ATL_dgemvS_a1_x1_bX_y1
   (const int M, const int N, const double alpha, const double *A,
    const int lda, const double *X, const int incX, const double beta,
    double *Y, const int incY);
void ATL_dgemvT_a1_x1_bX_y1
   (const int M, const int N, const double alpha, const double *A,
    const int lda, const double *X, const int incX, const double beta,
    double *Y, const int incY);
void ATL_dgemvN_a1_x1_bX_y1
   (const int M, const int N, const double alpha, const double *A,
    const int lda, const double *X, const int incX, const double beta,
    double *Y, const int incY);
void ATL_dgemvS_a1_x1_b1_y1
   (const int M, const int N, const double alpha, const double *A,
    const int lda, const double *X, const int incX, const double beta,
    double *Y, const int incY);
void ATL_dgemvT_a1_x1_b1_y1
   (const int M, const int N, const double alpha, const double *A,
    const int lda, const double *X, const int incX, const double beta,
    double *Y, const int incY);
void ATL_dgemvN_a1_x1_b1_y1
   (const int M, const int N, const double alpha, const double *A,
    const int lda, const double *X, const int incX, const double beta,
    double *Y, const int incY);
void ATL_dgemvS_a1_x1_b0_y1
   (const int M, const int N, const double alpha, const double *A,
    const int lda, const double *X, const int incX, const double beta,
    double *Y, const int incY);
void ATL_dgemvT_a1_x1_b0_y1
   (const int M, const int N, const double alpha, const double *A,
    const int lda, const double *X, const int incX, const double beta,
    double *Y, const int incY);
void ATL_dgemvN_a1_x1_b0_y1
   (const int M, const int N, const double alpha, const double *A,
    const int lda, const double *X, const int incX, const double beta,
    double *Y, const int incY);

/*
 * Complex kernels
 */
void ATL_cgerk_Mlt16
   (const int M, const int N, const float *alpha, const float *X,
    const int incX, const float *Y, const int incY, float *A, const int lda);
void ATL_cgerk_axpy
   (const int M, const int N, const float *alpha, const float *X,
    const int incX, const float *Y, const int incY, float *A, const int lda);
void ATL_cgemvS_a1_x1_bXi0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvC_a1_x1_bXi0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvNc_a1_x1_bXi0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvT_a1_x1_bXi0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvN_a1_x1_bXi0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvS_a1_x1_bX_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvC_a1_x1_bX_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvNc_a1_x1_bX_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvT_a1_x1_bX_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvN_a1_x1_bX_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvS_a1_x1_b1_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvC_a1_x1_b1_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvNc_a1_x1_b1_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvT_a1_x1_b1_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvN_a1_x1_b1_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvS_a1_x1_b0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvC_a1_x1_b0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvNc_a1_x1_b0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvT_a1_x1_b0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_cgemvN_a1_x1_b0_y1
   (const int M, const int N, const float *alpha, const float *A,
    const int lda, const float *X, const int incX, const float *beta,
    float *Y, const int incY);
void ATL_zgerk_Mlt16
   (const int M, const int N, const double *alpha, const double *X,
    const int incX, const double *Y, const int incY, double *A, const int lda);
void ATL_zgerk_axpy
   (const int M, const int N, const double *alpha, const double *X,
    const int incX, const double *Y, const int incY, double *A, const int lda);
void ATL_zgemvS_a1_x1_bXi0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvC_a1_x1_bXi0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvNc_a1_x1_bXi0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvT_a1_x1_bXi0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvN_a1_x1_bXi0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvS_a1_x1_bX_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvC_a1_x1_bX_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvNc_a1_x1_bX_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvT_a1_x1_bX_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvN_a1_x1_bX_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvS_a1_x1_b1_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvC_a1_x1_b1_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvNc_a1_x1_b1_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvT_a1_x1_b1_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvN_a1_x1_b1_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvS_a1_x1_b0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvC_a1_x1_b0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvNc_a1_x1_b0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvT_a1_x1_b0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);
void ATL_zgemvN_a1_x1_b0_y1
   (const int M, const int N, const double *alpha, const double *A,
    const int lda, const double *X, const int incX, const double *beta,
    double *Y, const int incY);

#endif
