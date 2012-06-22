      SUBROUTINE ZGEMMF(TRANA,TRANB,M,N,K,ALPHA,A,LDA,B,LDB,BETA,C,LDC)
*     .. Scalar Arguments ..
      DOUBLE COMPLEX ALPHA,BETA
      INTEGER K,LDA,LDB,LDC,M,N
      CHARACTER TRANA,TRANB
*     ..
*     .. Array Arguments ..
      DOUBLE COMPLEX A(LDA,*),B(LDB,*),C(LDC,*)
*     ..
      RETURN
*
*     End of ZGEMM .
*
      END
