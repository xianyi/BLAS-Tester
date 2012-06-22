      SUBROUTINE SSYRKF ( UPLO, TRANS, N, K, ALPHA, A, LDA,
     $                   BETA, C, LDC )
*     .. Scalar Arguments ..
      CHARACTER*1        UPLO, TRANS
      INTEGER            N, K, LDA, LDC
      REAL               ALPHA, BETA
*     .. Array Arguments ..
      REAL               A( LDA, * ), C( LDC, * )
*     ..
      RETURN
*
*     End of SSYRK .
*
      END
