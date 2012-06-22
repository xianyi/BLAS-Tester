      SUBROUTINE CHER2KF( UPLO, TRANS, N, K, ALPHA, A, LDA, B, LDB,
     $                   BETA, C, LDC )
*     .. Scalar Arguments ..
      CHARACTER*1        UPLO, TRANS
      INTEGER            N, K, LDA, LDB, LDC
      REAL               BETA
      COMPLEX            ALPHA
*     .. Array Arguments ..
      COMPLEX            A( LDA, * ), B( LDB, * ), C( LDC, * )
      RETURN
*
*     End of CHER2K.
*
      END
