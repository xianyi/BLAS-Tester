      SUBROUTINE CHERKF ( UPLO, TRANS, N, K, ALPHA, A, LDA,
     $                   BETA, C, LDC )
*     .. Scalar Arguments ..
      CHARACTER*1        UPLO, TRANS
      INTEGER            N, K, LDA, LDC
      REAL               ALPHA, BETA
*     .. Array Arguments ..
      COMPLEX            A( LDA, * ), C( LDC, * )
      RETURN
*
*     End of CHERK .
*
      END
