#ifndef ATLAS_TYPE_H
#define ATLAS_TYPE_H

#define ATL_isize 4
#define ATL_ssize 4
#define ATL_dsize 8
#define ATL_csize 8
#define ATL_zsize 16
#define OPENBLAS_iMulBySize(N_) ((((N_)) << 2))
#define OPENBLAS_sMulBySize(N_) ((((N_)) << 2))
#define OPENBLAS_dMulBySize(N_) ((((N_)) << 3))
#define OPENBLAS_cMulBySize(N_) ((((N_)) << 3))
#define OPENBLAS_zMulBySize(N_) ((((N_)) << 4))
#define ATL_ishift 2
#define OPENBLAS_iDivBySize(N_) ((N_) >> 2)
#define ATL_sshift 2
#define ATL_cshift 3
#define OPENBLAS_sDivBySize(N_) ((N_) >> 2)
#define OPENBLAS_cDivBySize(N_) ((N_) >> 3)
#define ATL_dshift 3
#define ATL_zshift 4
#define OPENBLAS_dDivBySize(N_) ((N_) >> 3)
#define OPENBLAS_zDivBySize(N_) ((N_) >> 4)

#endif
