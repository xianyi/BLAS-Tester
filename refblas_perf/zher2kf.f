      SUBROUTINE ZHER2KF( UPLO, TRANS, N, K, ALPHA, A, LDA, B,LDB, BETA,
     $                   C, LDC )
*     .. Scalar Arguments ..
      CHARACTER          TRANS, UPLO
      INTEGER            K, LDA, LDB, LDC, N
      DOUBLE PRECISION   BETA
      COMPLEX*16         ALPHA
*     ..
*     .. Array Arguments ..
      COMPLEX*16         A( LDA, * ), B( LDB, * ), C( LDC, * )
      RETURN
*
*     End of ZHER2K.
*
      END
