TOPDIR = ..
include $(TOPDIR)/Makefile.system

TARGET=librefblas_perf.a
#FC=gfortran
FFLAGS = $(ICCFLAGS)
#FFLAGS=-O3 
#ifeq ($(ARCH), mips64)
#FFLAGS +=-march=mips64 -mabi=64
#endif


MYLIB_FILES:=caxpycf.f   chbmvf.f    cpotrff.f   csyr2kf.f  dasumf.f   dmaxf.f    dsprf.f    dtrsvf.f   iqmaxf.f   scamaxf.f  slaswpf.f  sspmvf.f   strmvf.f    zgemvf.f    zhpmvf.f   zswapf.f ztrsvf.f \
	caxpyf.f    chemm3mf.f  cpotrif.f   csyrf.f    daxpyf.f   dminf.f    dswapf.f   dtrti2f.f  iqminf.f   scaminf.f  slauu2f.f  sspr2f.f   strsmf.f    zgercf.f    zhpr2f.f   zsymm3mf.f  ztrti2f.f \
	ccopyf.f    chemmf.f    crotgf.f    csyrkf.f   dcopyf.f   dnrm2f.f   dsymmf.f   dtrtrif.f  isamaxf.f  scasumf.f  slauumf.f  ssprf.f    strsvf.f    zgeruf.f    zhprf.f    zsymmf.f    ztrtrif.f \
	cdotcf.f    chemvf.f    csbmvf.f    ctbmvf.f   ddotf.f    dpotf2f.f  dsymvf.f   dzamaxf.f  isaminf.f  scnrm2f.f  smaxf.f    sswapf.f   strti2f.f   zgesvf.f    zlaswpf.f  zsymvf.f \
	cdotuf.f    cher2f.f    cscalf.f    ctbsvf.f   dgbmvf.f   dpotrff.f  dsyr2f.f   dzaminf.f  ismaxf.f   scopyf.f   sminf.f    ssymmf.f   strtrif.f   zgetf2f.f   zlauu2f.f  zsyr2f.f \
cgbmvf.f    cher2kf.f   cspmvf.f    ctpmvf.f   dgemmf.f   dpotrif.f  dsyr2kf.f  dzasumf.f  isminf.f   sdotf.f    snrm2f.f   ssymvf.f   zaxpycf.f   zgetrff.f   zlauumf.f  zsyr2kf.f \
cgemm3mf.f  cherf.f     cspr2f.f    ctpsvf.f   dgemvf.f   drotf.f    dsyrf.f    dznrm2f.f  ixamaxf.f  sdsdotf.f  spotf2f.f  ssyr2f.f   zaxpyf.f    zgetrsf.f   zpotf2f.f  zsyrf.f \
cgemmf.f    cherkf.f    csprf.f     ctrmmf.f   dgerf.f    drotgf.f   dsyrkf.f   icamaxf.f  ixaminf.f  sgbmvf.f   spotrff.f  ssyr2kf.f  zcopyf.f    zhbmvf.f    zpotrff.f  zsyrkf.f \
cgemvf.f    chpmvf.f    csrotf.f    ctrmvf.f   dgesvf.f   drotmf.f   dtbmvf.f   icaminf.f  izamaxf.f  sgemmf.f   spotrif.f  ssyrf.f    zdotcf.f    zhemm3mf.f  zpotrif.f  ztbmvf.f \
cgercf.f    chpr2f.f    csscalf.f   ctrsmf.f   dgetf2f.f  drotmgf.f  dtbsvf.f   idamaxf.f  izaminf.f  sgemvf.f   srotf.f    ssyrkf.f   zdotuf.f    zhemmf.f    zrotgf.f   ztbsvf.f \
cgeruf.f    chprf.f     cswapf.f    ctrsvf.f   dgetrff.f  dsbmvf.f   dtpmvf.f   idaminf.f  lsamef.f   sgerf.f    srotgf.f   stbmvf.f   zdrotf.f    zhemvf.f    zsbmvf.f   ztpmvf.f \
cgesvf.f    claswpf.f   csymm3mf.f  ctrti2f.f  dgetrsf.f  dscalf.f   dtpsvf.f   idmaxf.f   samaxf.f   sgesvf.f   srotmf.f   stbsvf.f   zdscalf.f   zher2f.f    zscalf.f   ztpsvf.f \
cgetf2f.f   clauu2f.f   csymmf.f    ctrtrif.f  dlaswpf.f  dsdotf.f   dtrmmf.f   idminf.f   saminf.f   sgetf2f.f  srotmgf.f  stpmvf.f   zgbmvf.f    zher2kf.f   zspmvf.f   ztrmmf.f \
cgetrff.f   clauumf.f   csymvf.f    damaxf.f   dlauu2f.f  dspmvf.f   dtrmvf.f   iqamaxf.f  sasumf.f   sgetrff.f  ssbmvf.f   stpsvf.f   zgemm3mf.f  zherf.f     zspr2f.f   ztrmvf.f \
	cgetrsf.f   cpotf2f.f   csyr2f.f    daminf.f   dlauumf.f  dspr2f.f   dtrsmf.f   iqaminf.f  saxpyf.f   sgetrsf.f  sscalf.f   strmmf.f   zgemmf.f    zherkf.f    zsprf.f    ztrsmf.f scabs1.f

OBJS:=$(MYLIB_FILES:.f=.o)

.PHONY: all
all:$(TARGET)

$(TARGET):$(OBJS)
	$(AR) $(ARFLAGS) $@  $^
	$(RANLIB)  $@ 

clean:
	$(RM) *.o $(TARGET)