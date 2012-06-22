TOPDIR = .
include $(TOPDIR)/Makefile.system


INCdep		=	$(INCdir)/*.h





PTsL1lib	=	ATL_sf77rotg.o ATL_sf77rot.o ATL_sf77rotmg.o ATL_sf77rotm.o ATL_sf77swap.o \
				ATL_sf77scal.o ATL_sf77copy.o ATL_sf77axpy.o ATL_sf77dot.o ATL_sdsf77dot.o \
				ATL_dsf77dot.o ATL_sf77nrm2.o ATL_sf77asum.o ATL_sf77amax.o ATL_sf77amin.o ATL_sf77rotgf.o \
				ATL_sf77rotf.o ATL_sf77rotmgf.o ATL_sf77rotmf.o ATL_sf77swapf.o ATL_sf77scalf.o \
				ATL_sf77copyf.o ATL_sf77axpyf.o ATL_sf77dotf.o ATL_sdsf77dotf.o	ATL_dsf77dotf.o \
				ATL_sf77nrm2f.o ATL_sf77asumf.o ATL_sf77amaxf.o ATL_sf77aminf.o ATL_ptflushcache.o ATL_sinfnrm.o \
				ATL_rand.o ATL_log2tlaunch.o ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o \
				ATL_svdiff.o
STsL1lib	=	ATL_sf77rotg.o ATL_sf77rot.o ATL_sf77rotmg.o ATL_sf77rotm.o ATL_sf77swap.o \
				ATL_sf77scal.o ATL_sf77copy.o ATL_sf77axpy.o ATL_sf77dot.o ATL_sdsf77dot.o \
				ATL_dsf77dot.o ATL_sf77nrm2.o ATL_sf77asum.o ATL_sf77amax.o ATL_sf77amin.o ATL_sf77rotgf.o \
				ATL_sf77rotf.o ATL_sf77rotmgf.o ATL_sf77rotmf.o ATL_sf77swapf.o ATL_sf77scalf.o \
				ATL_sf77copyf.o ATL_sf77axpyf.o ATL_sf77dotf.o ATL_sdsf77dotf.o	ATL_dsf77dotf.o \
				ATL_sf77nrm2f.o ATL_sf77asumf.o ATL_sf77amaxf.o ATL_sf77aminf.o ATL_flushcache.o ATL_sinfnrm.o \
				ATL_rand.o ATL_svdiff.o

PTdL1lib	=	ATL_df77rotg.o ATL_df77rot.o ATL_df77rotmg.o ATL_df77rotm.o ATL_df77swap.o \
				ATL_df77scal.o ATL_df77copy.o ATL_df77axpy.o ATL_df77dot.o ATL_df77nrm2.o \
				ATL_df77asum.o ATL_df77amax.o ATL_df77amin.o ATL_df77rotgf.o ATL_df77rotf.o ATL_df77rotmgf.o \
				ATL_df77rotmf.o ATL_df77swapf.o ATL_df77scalf.o ATL_df77copyf.o ATL_df77axpyf.o \
				ATL_df77dotf.o ATL_df77nrm2f.o ATL_df77asumf.o ATL_df77amaxf.o ATL_df77aminf.o ATL_ptflushcache.o \
				ATL_rand.o ATL_log2tlaunch.o ATL_thread_join.o ATL_thread_start.o \
				ATL_thread_exit.o ATL_dvdiff.o ATL_dinfnrm.o
STdL1lib	=	ATL_df77rotg.o ATL_df77rot.o ATL_df77rotmg.o ATL_df77rotm.o ATL_df77swap.o \
				ATL_df77scal.o ATL_df77copy.o ATL_df77axpy.o ATL_df77dot.o ATL_df77nrm2.o \
				ATL_df77asum.o ATL_df77amax.o ATL_df77amin.o ATL_df77rotgf.o ATL_df77rotf.o ATL_df77rotmgf.o \
				ATL_df77rotmf.o ATL_df77swapf.o ATL_df77scalf.o ATL_df77copyf.o ATL_df77axpyf.o \
				ATL_df77dotf.o ATL_df77nrm2f.o ATL_df77asumf.o ATL_df77amaxf.o ATL_df77aminf.o ATL_flushcache.o \
				ATL_rand.o ATL_dvdiff.o ATL_dinfnrm.o 

PTcL1lib	=	ATL_cf77rotg.o ATL_cf77rot.o ATL_cf77swap.o ATL_cf77scal.o ATL_cf77rscal.o \
				ATL_cf77copy.o ATL_cf77axpy.o ATL_cf77dotu.o ATL_cf77dotc.o ATL_cf77nrm2.o \
				ATL_cf77asum.o ATL_cf77amax.o ATL_cf77amin.o ATL_cf77rotgf.o ATL_cf77rotf.o ATL_cf77swapf.o \
				ATL_cf77scalf.o ATL_cf77rscalf.o ATL_cf77copyf.o ATL_cf77axpyf.o ATL_cf77dotuf.o \
				ATL_cf77dotcf.o ATL_cf77nrm2f.o ATL_cf77asumf.o ATL_cf77amaxf.o ATL_cf77aminf.o ATL_ptflushcache.o \
				ATL_rand.o ATL_log2tlaunch.o ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o \
				ATL_cvdiff.o ATL_cinfnrm.o
STcL1lib	=	ATL_cf77rotg.o ATL_cf77rot.o ATL_cf77swap.o ATL_cf77scal.o ATL_cf77rscal.o \
				ATL_cf77copy.o ATL_cf77axpy.o ATL_cf77dotu.o ATL_cf77dotc.o ATL_cf77nrm2.o \
				ATL_cf77asum.o ATL_cf77amax.o ATL_cf77amin.o ATL_cf77rotgf.o ATL_cf77rotf.o ATL_cf77swapf.o \
				ATL_cf77scalf.o ATL_cf77rscalf.o ATL_cf77copyf.o ATL_cf77axpyf.o ATL_cf77dotuf.o \
				ATL_cf77dotcf.o ATL_cf77nrm2f.o ATL_cf77asumf.o ATL_cf77aminf.o ATL_cf77amaxf.o ATL_flushcache.o \
				ATL_rand.o ATL_cvdiff.o ATL_cinfnrm.o

PTzL1lib	=	ATL_zf77rotg.o ATL_zf77rot.o ATL_zf77swap.o ATL_zf77scal.o ATL_zf77rscal.o \
				ATL_zf77copy.o ATL_zf77axpy.o ATL_zf77dotu.o ATL_zf77dotc.o ATL_zf77nrm2.o \
				ATL_zf77asum.o ATL_zf77amax.o ATL_zf77amin.o ATL_zf77rotgf.o ATL_zf77rotf.o ATL_zf77swapf.o \
				ATL_zf77scalf.o ATL_zf77rscalf.o ATL_zf77copyf.o ATL_zf77axpyf.o ATL_zf77dotuf.o \
				ATL_zf77dotcf.o ATL_zf77nrm2f.o ATL_zf77asumf.o ATL_zf77amaxf.o ATL_zf77aminf.o ATL_ptflushcache.o \
				ATL_rand.o ATL_log2tlaunch.o ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o \
				ATL_zvdiff.o ATL_zinfnrm.o
STzL1lib	=	ATL_zf77rotg.o ATL_zf77rot.o ATL_zf77swap.o ATL_zf77scal.o ATL_zf77rscal.o \
				ATL_zf77copy.o ATL_zf77axpy.o ATL_zf77dotu.o ATL_zf77dotc.o ATL_zf77nrm2.o \
				ATL_zf77asum.o ATL_zf77amax.o ATL_zf77amin.o ATL_zf77rotgf.o ATL_zf77rotf.o ATL_zf77swapf.o \
				ATL_zf77scalf.o ATL_zf77rscalf.o ATL_zf77copyf.o ATL_zf77axpyf.o ATL_zf77dotuf.o \
				ATL_zf77dotcf.o ATL_zf77nrm2f.o ATL_zf77asumf.o ATL_zf77amaxf.o ATL_zf77aminf.o ATL_flushcache.o \
				ATL_rand.o ATL_zvdiff.o ATL_zinfnrm.o


PTsL2lib	=	ATL_sf77gemv.o ATL_sf77gbmv.o ATL_sf77symv.o ATL_sf77sbmv.o ATL_sf77spmv.o \
				ATL_sf77trmv.o ATL_sf77tbmv.o ATL_sf77tpmv.o ATL_sf77trsv.o ATL_sf77tbsv.o \
				ATL_sf77tpsv.o ATL_sf77ger.o ATL_sf77syr.o ATL_sf77spr.o ATL_sf77syr2.o \
				ATL_sf77spr2.o ATL_sf77gemvf.o ATL_sf77gbmvf.o ATL_sf77symvf.o ATL_sf77sbmvf.o \
				ATL_sf77spmvf.o ATL_sf77trmvf.o ATL_sf77tbmvf.o ATL_sf77tpmvf.o ATL_sf77trsvf.o \
				ATL_sf77tbsvf.o ATL_sf77tpsvf.o ATL_sf77gerf.o ATL_sf77syrf.o ATL_sf77sprf.o \
				ATL_sf77syr2f.o ATL_sf77spr2f.o ATL_ptflushcache.o ATL_rand.o ATL_log2tlaunch.o \
				ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o ATL_svdiff.o ATL_sinfnrm.o \
				ATL_sgediffnrm1.o ATL_ssynrm.o ATL_sspnrm.o ATL_ssbnrm.o ATL_sgenrm1.o ATL_sgbnrm1.o \
				ATL_strnrm1.o ATL_stpnrm1.o ATL_stbnrm1.o
STsL2lib	=	ATL_sf77gemv.o ATL_sf77gbmv.o ATL_sf77symv.o ATL_sf77sbmv.o ATL_sf77spmv.o \
				ATL_sf77trmv.o ATL_sf77tbmv.o ATL_sf77tpmv.o ATL_sf77trsv.o ATL_sf77tbsv.o \
				ATL_sf77tpsv.o ATL_sf77ger.o ATL_sf77syr.o ATL_sf77spr.o ATL_sf77syr2.o \
				ATL_sf77spr2.o  ATL_sf77gemvf.o ATL_sf77gbmvf.o ATL_sf77symvf.o ATL_sf77sbmvf.o \
				ATL_sf77spmvf.o ATL_sf77trmvf.o ATL_sf77tbmvf.o ATL_sf77tpmvf.o ATL_sf77trsvf.o \
				ATL_sf77tbsvf.o ATL_sf77tpsvf.o ATL_sf77gerf.o ATL_sf77syrf.o ATL_sf77sprf.o \
				ATL_sf77syr2f.o ATL_sf77spr2f.o ATL_flushcache.o ATL_rand.o ATL_svdiff.o ATL_sinfnrm.o \
				ATL_strnrm1.o ATL_ssynrm.o ATL_sspnrm.o ATL_ssbnrm.o ATL_sgenrm1.o ATL_sgbnrm1.o \
				ATL_stbnrm1.o ATL_stpnrm1.o ATL_sgediffnrm1.o

PTdL2lib	=	ATL_df77gemv.o ATL_df77gbmv.o ATL_df77symv.o ATL_df77sbmv.o ATL_df77spmv.o \
				ATL_df77trmv.o ATL_df77tbmv.o ATL_df77tpmv.o ATL_df77trsv.o ATL_df77tbsv.o \
				ATL_df77tpsv.o ATL_df77ger.o ATL_df77syr.o ATL_df77spr.o ATL_df77syr2.o \
				ATL_df77spr2.o ATL_df77gemvf.o ATL_df77gbmvf.o ATL_df77symvf.o ATL_df77sbmvf.o \
				ATL_df77spmvf.o ATL_df77trmvf.o ATL_df77tbmvf.o ATL_df77tpmvf.o ATL_df77trsvf.o \
				ATL_df77tbsvf.o ATL_df77tpsvf.o ATL_df77gerf.o ATL_df77syrf.o ATL_df77sprf.o \
				ATL_df77syr2f.o ATL_df77spr2f.o ATL_ptflushcache.o ATL_rand.o ATL_log2tlaunch.o \
				ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o ATL_dvdiff.o ATL_dinfnrm.o \
				ATL_dgediffnrm1.o ATL_dsynrm.o ATL_dspnrm.o ATL_dsbnrm.o ATL_dgenrm1.o ATL_dgbnrm1.o \
				ATL_dtrnrm1.o ATL_dtpnrm1.o ATL_dtbnrm1.o
STdL2lib	=	ATL_df77gemv.o ATL_df77gbmv.o ATL_df77symv.o ATL_df77sbmv.o ATL_df77spmv.o \
				ATL_df77trmv.o ATL_df77tbmv.o ATL_df77tpmv.o ATL_df77trsv.o ATL_df77tbsv.o \
				ATL_df77tpsv.o ATL_df77ger.o ATL_df77syr.o ATL_df77spr.o ATL_df77syr2.o \
				ATL_df77spr2.o  ATL_df77gemvf.o ATL_df77gbmvf.o ATL_df77symvf.o ATL_df77sbmvf.o \
				ATL_df77spmvf.o ATL_df77trmvf.o ATL_df77tbmvf.o ATL_df77tpmvf.o ATL_df77trsvf.o \
				ATL_df77tbsvf.o ATL_df77tpsvf.o ATL_df77gerf.o ATL_df77syrf.o ATL_df77sprf.o \
				ATL_df77syr2f.o ATL_df77spr2f.o ATL_flushcache.o ATL_rand.o ATL_dvdiff.o \
				ATL_dinfnrm.o ATL_dsynrm.o ATL_dspnrm.o ATL_dsbnrm.o ATL_dgenrm1.o ATL_dgbnrm1.o \
				ATL_dtrnrm1.o ATL_dtpnrm1.o ATL_dtbnrm1.o ATL_dgediffnrm1.o

PTcL2lib	=	ATL_cf77gemv.o ATL_cf77gbmv.o ATL_cf77hemv.o ATL_cf77hbmv.o ATL_cf77hpmv.o \
				ATL_cf77trmv.o ATL_cf77tbmv.o ATL_cf77tpmv.o ATL_cf77trsv.o ATL_cf77tbsv.o \
				ATL_cf77tpsv.o ATL_cf77geru.o ATL_cf77gerc.o ATL_cf77her.o ATL_cf77hpr.o \
				ATL_cf77her2.o ATL_cf77hpr2.o ATL_cf77gemvf.o ATL_cf77gbmvf.o ATL_cf77hemvf.o \
				ATL_cf77hbmvf.o ATL_cf77hpmvf.o ATL_cf77trmvf.o ATL_cf77tbmvf.o ATL_cf77tpmvf.o \
				ATL_cf77trsvf.o ATL_cf77tbsvf.o ATL_cf77tpsvf.o ATL_cf77geruf.o ATL_cf77gercf.o \
				ATL_cf77herf.o ATL_cf77hprf.o ATL_cf77her2f.o ATL_cf77hpr2f.o ATL_ptflushcache.o \
				ATL_cvdiff.o ATL_cinfnrm.o ATL_rand.o ATL_log2tlaunch.o ATL_thread_join.o \
				ATL_thread_start.o ATL_thread_exit.o ATL_csynrm.o ATL_cspnrm.o ATL_csbnrm.o \
				ATL_cgenrm1.o ATL_cgbnrm1.o ATL_ctrnrm1.o ATL_ctpnrm1.o ATL_ctbnrm1.o \
				ATL_cgediffnrm1.o ATL_chenrm.o ATL_chpnrm.o ATL_chbnrm.o
STcL2lib	=	ATL_cf77gemv.o ATL_cf77gbmv.o ATL_cf77hemv.o ATL_cf77hbmv.o ATL_cf77hpmv.o \
				ATL_cf77trmv.o ATL_cf77tbmv.o ATL_cf77tpmv.o ATL_cf77trsv.o ATL_cf77tbsv.o \
				ATL_cf77tpsv.o ATL_cf77geru.o ATL_cf77gerc.o ATL_cf77her.o ATL_cf77hpr.o \
				ATL_cf77her2.o ATL_cf77hpr2.o ATL_cf77gemvf.o ATL_cf77gbmvf.o ATL_cf77hemvf.o \
				ATL_cf77hbmvf.o ATL_cf77hpmvf.o ATL_cf77trmvf.o ATL_cf77tbmvf.o ATL_cf77tpmvf.o \
				ATL_cf77trsvf.o ATL_cf77tbsvf.o ATL_cf77tpsvf.o ATL_cf77geruf.o ATL_cf77gercf.o \
				ATL_cf77herf.o ATL_cf77hprf.o ATL_cf77her2f.o ATL_cf77hpr2f.o ATL_flushcache.o \
				ATL_rand.o ATL_cvdiff.o ATL_cinfnrm.o ATL_csynrm.o ATL_cspnrm.o ATL_csbnrm.o \
				ATL_cgenrm1.o ATL_cgbnrm1.o ATL_ctrnrm1.o ATL_ctpnrm1.o ATL_ctbnrm1.o \
				ATL_cgediffnrm1.o ATL_chenrm.o ATL_chpnrm.o ATL_chbnrm.o

PTzL2lib	=	ATL_zf77gemv.o ATL_zf77gbmv.o ATL_zf77hemv.o ATL_zf77hbmv.o ATL_zf77hpmv.o \
				ATL_zf77trmv.o ATL_zf77tbmv.o ATL_zf77tpmv.o ATL_zf77trsv.o ATL_zf77tbsv.o \
				ATL_zf77tpsv.o ATL_zf77geru.o ATL_zf77gerc.o ATL_zf77her.o ATL_zf77hpr.o \
				ATL_zf77her2.o ATL_zf77hpr2.o ATL_zf77gemvf.o ATL_zf77gbmvf.o ATL_zf77hemvf.o \
				ATL_zf77hbmvf.o ATL_zf77hpmvf.o ATL_zf77trmvf.o ATL_zf77tbmvf.o ATL_zf77tpmvf.o \
				ATL_zf77trsvf.o ATL_zf77tbsvf.o ATL_zf77tpsvf.o ATL_zf77geruf.o ATL_zf77gercf.o \
				ATL_zf77herf.o ATL_zf77hprf.o ATL_zf77her2f.o ATL_zf77hpr2f.o ATL_ptflushcache.o \
				ATL_rand.o ATL_log2tlaunch.o ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o \
				ATL_zvdiff.o ATL_zinfnrm.o ATL_zgediffnrm1.o ATL_zsynrm.o ATL_zspnrm.o ATL_zsbnrm.o \
				ATL_zgenrm1.o ATL_zgbnrm1.o ATL_ztrnrm1.o ATL_ztpnrm1.o ATL_ztbnrm1.o ATL_zhenrm.o \
				ATL_zhpnrm.o ATL_zhbnrm.o
STzL2lib	=	ATL_zf77gemv.o ATL_zf77gbmv.o ATL_zf77hemv.o ATL_zf77hbmv.o ATL_zf77hpmv.o \
				ATL_zf77trmv.o ATL_zf77tbmv.o ATL_zf77tpmv.o ATL_zf77trsv.o ATL_zf77tbsv.o \
				ATL_zf77tpsv.o ATL_zf77geru.o ATL_zf77gerc.o ATL_zf77her.o ATL_zf77hpr.o \
				ATL_zf77her2.o ATL_zf77hpr2.o ATL_zf77gemvf.o ATL_zf77gbmvf.o ATL_zf77hemvf.o \
				ATL_zf77hbmvf.o ATL_zf77hpmvf.o ATL_zf77trmvf.o ATL_zf77tbmvf.o ATL_zf77tpmvf.o \
				ATL_zf77trsvf.o ATL_zf77tbsvf.o ATL_zf77tpsvf.o ATL_zf77geruf.o ATL_zf77gercf.o \
				ATL_zf77herf.o ATL_zf77hprf.o ATL_zf77her2f.o ATL_zf77hpr2f.o ATL_flushcache.o \
				ATL_rand.o ATL_zvdiff.o ATL_zinfnrm.o ATL_zgediffnrm1.o ATL_zsynrm.o ATL_zspnrm.o \
				ATL_zsbnrm.o ATL_zgenrm1.o ATL_zgbnrm1.o ATL_ztrnrm1.o ATL_ztpnrm1.o ATL_ztbnrm1.o \
				ATL_zhenrm.o ATL_zhpnrm.o ATL_zhbnrm.o


PTsL3lib	=	ATL_sf77gemm.o ATL_sf77symm.o ATL_sf77syr2k.o ATL_sf77syrk.o ATL_sf77trmm.o \
				ATL_sf77trsm.o ATL_sf77gemmf.o ATL_sf77symmf.o ATL_sf77syr2kf.o ATL_sf77syrkf.o \
				ATL_sf77trmmf.o ATL_sf77trsmf.o ATL_ptflushcache.o ATL_rand.o ATL_log2tlaunch.o \
				ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o ATL_svdiff.o ATL_sinfnrm.o \
				ATL_strnrm1.o ATL_sgediffnrm1.o ATL_sgenrm1.o ATL_ssynrm.o
STsL3lib	=	ATL_sf77gemm.o ATL_sf77symm.o ATL_sf77syr2k.o ATL_sf77syrk.o ATL_sf77trmm.o \
				ATL_sf77trsm.o ATL_sf77gemmf.o ATL_sf77symmf.o ATL_sf77syr2kf.o ATL_sf77syrkf.o \
				ATL_sf77trmmf.o ATL_sf77trsmf.o ATL_flushcache.o ATL_rand.o ATL_svdiff.o \
				ATL_sinfnrm.o ATL_strnrm1.o ATL_sgediffnrm1.o ATL_sgenrm1.o ATL_ssynrm.o

PTdL3lib	=	ATL_df77gemm.o ATL_df77symm.o ATL_df77syr2k.o ATL_df77syrk.o ATL_df77trmm.o \
				ATL_df77trsm.o ATL_df77gemmf.o ATL_df77symmf.o ATL_df77syr2kf.o ATL_df77syrkf.o \
				ATL_df77trmmf.o ATL_df77trsmf.o ATL_ptflushcache.o ATL_rand.o ATL_log2tlaunch.o \
				ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o ATL_dvdiff.o ATL_dinfnrm.o \
				ATL_dtrnrm1.o ATL_dgediffnrm1.o ATL_dgenrm1.o ATL_dsynrm.o
STdL3lib	=	ATL_df77gemm.o ATL_df77symm.o ATL_df77syr2k.o ATL_df77syrk.o ATL_df77trmm.o \
				ATL_df77trsm.o ATL_df77gemmf.o ATL_df77symmf.o ATL_df77syr2kf.o ATL_df77syrkf.o \
				ATL_df77trmmf.o ATL_df77trsmf.o  ATL_flushcache.o ATL_rand.o ATL_dvdiff.o \
				ATL_dinfnrm.o ATL_dtrnrm1.o ATL_dgediffnrm1.o ATL_dgenrm1.o ATL_dsynrm.o

PTcL3lib	=	ATL_cf77gemm.o ATL_cf77symm.o ATL_cf77syr2k.o ATL_cf77syrk.o ATL_cf77trmm.o \
				ATL_cf77trsm.o ATL_cf77her2k.o ATL_cf77herk.o ATL_cf77hemm.o ATL_cf77gemmf.o \
				ATL_cf77symmf.o ATL_cf77syr2kf.o ATL_cf77syrkf.o ATL_cf77trmmf.o ATL_cf77trsmf.o \
				ATL_cf77her2kf.o ATL_cf77herkf.o ATL_cf77hemmf.o ATL_ptflushcache.o ATL_rand.o \
				ATL_log2tlaunch.o ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o \
				ATL_cvdiff.o ATL_cinfnrm.o ATL_ctrnrm1.o ATL_cgediffnrm1.o ATL_cgenrm1.o \
				ATL_csynrm.o ATL_chenrm.o
STcL3lib	=	ATL_cf77gemm.o ATL_cf77symm.o ATL_cf77syr2k.o ATL_cf77syrk.o ATL_cf77trmm.o \
				ATL_cf77trsm.o ATL_cf77her2k.o ATL_cf77herk.o ATL_cf77hemm.o ATL_cf77gemmf.o \
				ATL_cf77symmf.o ATL_cf77syr2kf.o ATL_cf77syrkf.o ATL_cf77trmmf.o ATL_cf77trsmf.o \
				ATL_cf77her2kf.o ATL_cf77herkf.o ATL_cf77hemmf.o ATL_flushcache.o ATL_rand.o \
				ATL_cvdiff.o ATL_cinfnrm.o ATL_ctrnrm1.o ATL_cgediffnrm1.o ATL_cgenrm1.o \
				ATL_csynrm.o ATL_chenrm.o

PTzL3lib	=	ATL_zf77gemm.o ATL_zf77symm.o ATL_zf77syr2k.o ATL_zf77syrk.o ATL_zf77trmm.o \
				ATL_zf77trsm.o ATL_zf77her2k.o ATL_zf77herk.o ATL_zf77hemm.o ATL_zf77gemmf.o \
				ATL_zf77symmf.o ATL_zf77syr2kf.o ATL_zf77syrkf.o ATL_zf77trmmf.o ATL_zf77trsmf.o \
				ATL_zf77her2kf.o ATL_zf77herkf.o ATL_zf77hemmf.o ATL_ptflushcache.o ATL_rand.o \
				ATL_log2tlaunch.o ATL_thread_join.o ATL_thread_start.o ATL_thread_exit.o \
				ATL_zvdiff.o ATL_zinfnrm.o ATL_ztrnrm1.o ATL_zgediffnrm1.o ATL_zgenrm1.o \
				ATL_zsynrm.o ATL_zhenrm.o
STzL3lib	=	ATL_zf77gemm.o ATL_zf77symm.o ATL_zf77syr2k.o ATL_zf77syrk.o ATL_zf77trmm.o \
				ATL_zf77trsm.o ATL_zf77her2k.o ATL_zf77herk.o ATL_zf77hemm.o ATL_zf77gemmf.o \
				ATL_zf77symmf.o ATL_zf77syr2kf.o ATL_zf77syrkf.o ATL_zf77trmmf.o ATL_zf77trsmf.o \
				ATL_zf77her2kf.o ATL_zf77herkf.o ATL_zf77hemmf.o ATL_flushcache.o ATL_rand.o \
				ATL_zvdiff.o ATL_zinfnrm.o ATL_ztrnrm1.o ATL_zgediffnrm1.o ATL_zgenrm1.o \
				ATL_zsynrm.o ATL_zhenrm.o



all : lvl1 lvl2 lvl3 prepare

lvl1 : lvl1_st prepare
lvl2 : lvl2_st prepare
lvl3 : lvl3_st prepare

lvl1_st : xsl1blastst xdl1blastst xcl1blastst xzl1blastst prepare
lvl2_st : xsl2blastst xdl2blastst xcl2blastst xzl2blastst prepare
lvl3_st : xsl3blastst xdl3blastst xcl3blastst xzl3blastst prepare

lvl1_pt : xsl1blastst_pt xdl1blastst_pt xcl1blastst_pt xzl1blastst_pt prepare
lvl2_pt : xsl2blastst_pt xdl2blastst_pt xcl2blastst_pt xzl2blastst_pt prepare
lvl3_pt : xsl3blastst_pt xdl3blastst_pt xcl3blastst_pt xzl3blastst_pt prepare

slvl1 : xsl1blastst xsl1blastst_pt prepare
dlvl1 : xdl1blastst xdl1blastst_pt prepare
clvl1 : xcl1blastst xcl1blastst_pt prepare
zlvl1 : xzl1blastst xzl1blastst_pt prepare

slvl2 : xsl2blastst xsl2blastst_pt prepare
dlvl2 : xdl2blastst xdl2blastst_pt prepare
clvl2 : xcl2blastst xcl2blastst_pt prepare
zlvl2 : xzl2blastst xzl2blastst_pt prepare

slvl3 : xsl3blastst xsl3blastst_pt prepare
dlvl3 : xdl3blastst xdl3blastst_pt prepare
clvl3 : xcl3blastst xcl3blastst_pt prepare
zlvl3 : xzl3blastst xzl3blastst_pt prepare



ATL_thread_start.o : $(HOMEdir)/ATL_thread_start.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) $(HOMEdir)/ATL_thread_start.c

ATL_thread_join.o : $(HOMEdir)/ATL_thread_join.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) $(HOMEdir)/ATL_thread_join.c

ATL_thread_exit.o : $(HOMEdir)/ATL_thread_exit.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) $(HOMEdir)/ATL_thread_exit.c

ATL_log2tlaunch.o : $(HOMEdir)/ATL_log2tlaunch.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) $(HOMEdir)/ATL_log2tlaunch.c

ATL_rand.o : $(HOMEdir)/ATL_rand.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_rand.c

ATL_flushcache.o : $(HOMEdir)/ATL_flushcache.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) $(HOMEdir)/ATL_flushcache.c

ATL_ptflushcache.o : $(HOMEdir)/ATL_ptflushcache.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) $(HOMEdir)/ATL_ptflushcache.c

ATL_svdiff.o : $(HOMEdir)/ATL_vdiff.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_vdiff.c

ATL_dvdiff.o : $(HOMEdir)/ATL_vdiff.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_vdiff.c

ATL_cvdiff.o : $(HOMEdir)/ATL_vdiff.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_vdiff.c

ATL_zvdiff.o : $(HOMEdir)/ATL_vdiff.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_vdiff.c

ATL_sinfnrm.o : $(HOMEdir)/ATL_infnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_infnrm.c

ATL_dinfnrm.o : $(HOMEdir)/ATL_infnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_infnrm.c

ATL_cinfnrm.o : $(HOMEdir)/ATL_infnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_infnrm.c

ATL_zinfnrm.o : $(HOMEdir)/ATL_infnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_infnrm.c

ATL_sgediffnrm1.o : $(HOMEdir)/ATL_gediffnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_gediffnrm1.c

ATL_dgediffnrm1.o : $(HOMEdir)/ATL_gediffnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_gediffnrm1.c

ATL_cgediffnrm1.o : $(HOMEdir)/ATL_gediffnrm1.c $(INCdep)  
		$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_gediffnrm1.c

ATL_zgediffnrm1.o : $(HOMEdir)/ATL_gediffnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_gediffnrm1.c

ATL_ssynrm.o : $(HOMEdir)/ATL_synrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_synrm.c

ATL_dsynrm.o : $(HOMEdir)/ATL_synrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_synrm.c

ATL_csynrm.o : $(HOMEdir)/ATL_synrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_synrm.c

ATL_zsynrm.o : $(HOMEdir)/ATL_synrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_synrm.c

ATL_ssbnrm.o : $(HOMEdir)/ATL_sbnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_sbnrm.c

ATL_dsbnrm.o : $(HOMEdir)/ATL_sbnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_sbnrm.c

ATL_csbnrm.o : $(HOMEdir)/ATL_sbnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_sbnrm.c

ATL_zsbnrm.o : $(HOMEdir)/ATL_sbnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_sbnrm.c

ATL_sspnrm.o : $(HOMEdir)/ATL_synrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_spnrm.c

ATL_dspnrm.o : $(HOMEdir)/ATL_spnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_spnrm.c

ATL_cspnrm.o : $(HOMEdir)/ATL_spnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_spnrm.c

ATL_zspnrm.o : $(HOMEdir)/ATL_spnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_spnrm.c

ATL_sgenrm1.o : $(HOMEdir)/ATL_genrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_genrm1.c

ATL_dgenrm1.o : $(HOMEdir)/ATL_genrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_genrm1.c

ATL_cgenrm1.o : $(HOMEdir)/ATL_genrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_genrm1.c

ATL_zgenrm1.o : $(HOMEdir)/ATL_genrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_genrm1.c

ATL_sgbnrm1.o : $(HOMEdir)/ATL_gbnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_gbnrm1.c

ATL_dgbnrm1.o : $(HOMEdir)/ATL_gbnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_gbnrm1.c

ATL_cgbnrm1.o : $(HOMEdir)/ATL_gbnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_gbnrm1.c

ATL_zgbnrm1.o : $(HOMEdir)/ATL_gbnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_gbnrm1.c

ATL_stpnrm1.o : $(HOMEdir)/ATL_tpnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_tpnrm1.c

ATL_dtpnrm1.o : $(HOMEdir)/ATL_tpnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_tpnrm1.c

ATL_ctpnrm1.o : $(HOMEdir)/ATL_tpnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_tpnrm1.c

ATL_ztpnrm1.o : $(HOMEdir)/ATL_tpnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_tpnrm1.c

ATL_strnrm1.o : $(HOMEdir)/ATL_trnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_trnrm1.c

ATL_dtrnrm1.o : $(HOMEdir)/ATL_trnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_trnrm1.c

ATL_ctrnrm1.o : $(HOMEdir)/ATL_trnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_trnrm1.c

ATL_ztrnrm1.o : $(HOMEdir)/ATL_trnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_trnrm1.c

ATL_stbnrm1.o : $(HOMEdir)/ATL_tbnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSREAL $(HOMEdir)/ATL_tbnrm1.c

ATL_dtbnrm1.o : $(HOMEdir)/ATL_tbnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDREAL $(HOMEdir)/ATL_tbnrm1.c

ATL_ctbnrm1.o : $(HOMEdir)/ATL_tbnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_tbnrm1.c

ATL_ztbnrm1.o : $(HOMEdir)/ATL_tbnrm1.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_tbnrm1.c

ATL_chenrm.o : $(HOMEdir)/ATL_henrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_henrm.c

ATL_zhenrm.o : $(HOMEdir)/ATL_henrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_henrm.c

ATL_chpnrm.o : $(HOMEdir)/ATL_hpnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_hpnrm.c

ATL_zhpnrm.o : $(HOMEdir)/ATL_hpnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_hpnrm.c

ATL_chbnrm.o : $(HOMEdir)/ATL_hbnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DSCPLX $(HOMEdir)/ATL_hbnrm.c

ATL_zhbnrm.o : $(HOMEdir)/ATL_hbnrm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DDCPLX $(HOMEdir)/ATL_hbnrm.c



###################################################################



ATL_sf77rotg.o : $(HOMEdir)/ATL_f77rotg.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77rotg.c

ATL_sf77rotmg.o : $(HOMEdir)/ATL_f77rotmg.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77rotmg.c

ATL_sf77rot.o : $(HOMEdir)/ATL_f77rot.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77rot.c

ATL_sf77rotm.o : $(HOMEdir)/ATL_f77rotm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77rotm.c

ATL_sf77swap.o : $(HOMEdir)/ATL_f77swap.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77swap.c

ATL_sf77scal.o : $(HOMEdir)/ATL_f77scal.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77scal.c

ATL_sf77copy.o : $(HOMEdir)/ATL_f77copy.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77copy.c

ATL_sf77axpy.o : $(HOMEdir)/ATL_f77axpy.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77axpy.c

ATL_sf77dot.o : $(HOMEdir)/ATL_f77dot.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77dot.c

ATL_dsf77dot.o : $(HOMEdir)/ATL_dsf77dot.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_dsf77dot.c

ATL_sdsf77dot.o : $(HOMEdir)/ATL_sdsf77dot.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_sdsf77dot.c

ATL_sf77nrm2.o : $(HOMEdir)/ATL_f77nrm2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77nrm2.c

ATL_sf77asum.o : $(HOMEdir)/ATL_f77asum.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77asum.c

ATL_sf77amax.o : $(HOMEdir)/ATL_f77amax.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77amax.c

ATL_sf77amin.o : $(HOMEdir)/ATL_f77amin.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77amin.c


ATL_df77rotg.o : $(HOMEdir)/ATL_f77rotg.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77rotg.c

ATL_df77rot.o : $(HOMEdir)/ATL_f77rot.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77rot.c

ATL_df77rotmg.o : $(HOMEdir)/ATL_f77rotmg.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77rotmg.c

ATL_df77rotm.o : $(HOMEdir)/ATL_f77rotm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77rotm.c

ATL_df77swap.o : $(HOMEdir)/ATL_f77swap.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77swap.c

ATL_df77scal.o : $(HOMEdir)/ATL_f77scal.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77scal.c

ATL_df77copy.o : $(HOMEdir)/ATL_f77copy.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77copy.c

ATL_df77axpy.o : $(HOMEdir)/ATL_f77axpy.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77axpy.c

ATL_df77dot.o : $(HOMEdir)/ATL_f77dot.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77dot.c

ATL_df77nrm2.o : $(HOMEdir)/ATL_f77nrm2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77nrm2.c

ATL_df77asum.o : $(HOMEdir)/ATL_f77asum.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77asum.c

ATL_df77amax.o : $(HOMEdir)/ATL_f77amax.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77amax.c

ATL_df77amin.o : $(HOMEdir)/ATL_f77amin.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77amin.c


ATL_cf77rotg.o : $(HOMEdir)/ATL_f77rotg.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77rotg.c

ATL_cf77rot.o : $(HOMEdir)/ATL_f77rot.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77rot.c

ATL_cf77swap.o : $(HOMEdir)/ATL_f77swap.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77swap.c

ATL_cf77scal.o : $(HOMEdir)/ATL_f77scal.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77scal.c

ATL_cf77rscal.o : $(HOMEdir)/ATL_f77rscal.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77rscal.c

ATL_cf77copy.o : $(HOMEdir)/ATL_f77copy.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77copy.c

ATL_cf77axpy.o : $(HOMEdir)/ATL_f77axpy.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77axpy.c

ATL_cf77dotu.o : $(HOMEdir)/ATL_f77dotu_sub.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77dotu_sub.c

ATL_cf77dotc.o : $(HOMEdir)/ATL_f77dotc_sub.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77dotc_sub.c

ATL_cf77nrm2.o : $(HOMEdir)/ATL_f77nrm2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77nrm2.c

ATL_cf77asum.o : $(HOMEdir)/ATL_f77asum.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77asum.c

ATL_cf77amax.o : $(HOMEdir)/ATL_f77amax.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77amax.c

ATL_cf77amin.o : $(HOMEdir)/ATL_f77amin.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77amin.c


ATL_zf77rotg.o : $(HOMEdir)/ATL_f77rotg.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77rotg.c

ATL_zf77rot.o : $(HOMEdir)/ATL_f77rot.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77rot.c

ATL_zf77swap.o : $(HOMEdir)/ATL_f77swap.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77swap.c

ATL_zf77scal.o : $(HOMEdir)/ATL_f77scal.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77scal.c

ATL_zf77rscal.o : $(HOMEdir)/ATL_f77rscal.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77rscal.c

ATL_zf77copy.o : $(HOMEdir)/ATL_f77copy.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77copy.c

ATL_zf77axpy.o : $(HOMEdir)/ATL_f77axpy.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77axpy.c

ATL_zf77dotu.o : $(HOMEdir)/ATL_f77dotu_sub.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77dotu_sub.c

ATL_zf77dotc.o : $(HOMEdir)/ATL_f77dotc_sub.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77dotc_sub.c

ATL_zf77nrm2.o : $(HOMEdir)/ATL_f77nrm2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77nrm2.c

ATL_zf77asum.o : $(HOMEdir)/ATL_f77asum.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77asum.c

ATL_zf77amax.o : $(HOMEdir)/ATL_f77amax.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77amax.c

ATL_zf77amin.o : $(HOMEdir)/ATL_f77amin.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77amin.c



###################################################################



ATL_sf77rotgf.o : $(HOMEdir)/ATL_f77rotgf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77rotgf.c

ATL_sf77rotmgf.o : $(HOMEdir)/ATL_f77rotmgf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77rotmgf.c

ATL_sf77rotf.o : $(HOMEdir)/ATL_f77rotf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77rotf.c

ATL_sf77rotmf.o : $(HOMEdir)/ATL_f77rotmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77rotmf.c

ATL_sf77swapf.o : $(HOMEdir)/ATL_f77swapf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77swapf.c

ATL_sf77scalf.o : $(HOMEdir)/ATL_f77scalf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77scalf.c

ATL_sf77copyf.o : $(HOMEdir)/ATL_f77copyf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77copyf.c

ATL_sf77axpyf.o : $(HOMEdir)/ATL_f77axpyf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77axpyf.c

ATL_sf77dotf.o : $(HOMEdir)/ATL_f77dotf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77dotf.c

ATL_dsf77dotf.o : $(HOMEdir)/ATL_dsf77dotf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_dsf77dotf.c

ATL_sdsf77dotf.o : $(HOMEdir)/ATL_sdsf77dotf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_sdsf77dotf.c

ATL_sf77nrm2f.o : $(HOMEdir)/ATL_f77nrm2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77nrm2f.c

ATL_sf77asumf.o : $(HOMEdir)/ATL_f77asumf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77asumf.c

ATL_sf77amaxf.o : $(HOMEdir)/ATL_f77amaxf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77amaxf.c

ATL_sf77aminf.o : $(HOMEdir)/ATL_f77aminf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77aminf.c


ATL_df77rotgf.o : $(HOMEdir)/ATL_f77rotgf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77rotgf.c

ATL_df77rotf.o : $(HOMEdir)/ATL_f77rotf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77rotf.c

ATL_df77rotmgf.o : $(HOMEdir)/ATL_f77rotmgf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77rotmgf.c

ATL_df77rotmf.o : $(HOMEdir)/ATL_f77rotmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77rotmf.c

ATL_df77swapf.o : $(HOMEdir)/ATL_f77swapf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77swapf.c

ATL_df77scalf.o : $(HOMEdir)/ATL_f77scalf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77scalf.c

ATL_df77copyf.o : $(HOMEdir)/ATL_f77copyf.c $(INCdep) 
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77copyf.c

ATL_df77axpyf.o : $(HOMEdir)/ATL_f77axpyf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77axpyf.c

ATL_df77dotf.o : $(HOMEdir)/ATL_f77dotf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77dotf.c

ATL_df77nrm2f.o : $(HOMEdir)/ATL_f77nrm2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77nrm2f.c

ATL_df77asumf.o : $(HOMEdir)/ATL_f77asumf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77asumf.c

ATL_df77amaxf.o : $(HOMEdir)/ATL_f77amaxf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77amaxf.c

ATL_df77aminf.o : $(HOMEdir)/ATL_f77aminf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77aminf.c



ATL_cf77rotgf.o : $(HOMEdir)/ATL_f77rotgf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77rotgf.c

ATL_cf77rotf.o : $(HOMEdir)/ATL_f77rotf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77rotf.c

ATL_cf77swapf.o : $(HOMEdir)/ATL_f77swapf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77swapf.c

ATL_cf77scalf.o : $(HOMEdir)/ATL_f77scalf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77scalf.c

ATL_cf77rscalf.o : $(HOMEdir)/ATL_f77rscalf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77rscalf.c

ATL_cf77copyf.o : $(HOMEdir)/ATL_f77copyf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77copyf.c

ATL_cf77axpyf.o : $(HOMEdir)/ATL_f77axpyf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77axpyf.c

ATL_cf77dotuf.o : $(HOMEdir)/ATL_f77dotu_subf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77dotu_subf.c

ATL_cf77dotcf.o : $(HOMEdir)/ATL_f77dotc_subf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77dotc_subf.c

ATL_cf77nrm2f.o : $(HOMEdir)/ATL_f77nrm2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77nrm2f.c

ATL_cf77asumf.o : $(HOMEdir)/ATL_f77asumf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77asumf.c

ATL_cf77amaxf.o : $(HOMEdir)/ATL_f77amaxf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77amaxf.c

ATL_cf77aminf.o : $(HOMEdir)/ATL_f77aminf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77aminf.c


ATL_zf77rotgf.o : $(HOMEdir)/ATL_f77rotgf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77rotgf.c

ATL_zf77rotf.o : $(HOMEdir)/ATL_f77rotf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77rotf.c

ATL_zf77swapf.o : $(HOMEdir)/ATL_f77swapf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77swapf.c

ATL_zf77scalf.o : $(HOMEdir)/ATL_f77scalf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77scalf.c

ATL_zf77rscalf.o : $(HOMEdir)/ATL_f77rscalf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77rscalf.c

ATL_zf77copyf.o : $(HOMEdir)/ATL_f77copyf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77copyf.c

ATL_zf77axpyf.o : $(HOMEdir)/ATL_f77axpyf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77axpyf.c

ATL_zf77dotuf.o : $(HOMEdir)/ATL_f77dotu_subf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77dotu_subf.c

ATL_zf77dotcf.o : $(HOMEdir)/ATL_f77dotc_subf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77dotc_subf.c

ATL_zf77nrm2f.o : $(HOMEdir)/ATL_f77nrm2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77nrm2f.c

ATL_zf77asumf.o : $(HOMEdir)/ATL_f77asumf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77asumf.c

ATL_zf77amaxf.o : $(HOMEdir)/ATL_f77amaxf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77amaxf.c

ATL_zf77aminf.o : $(HOMEdir)/ATL_f77aminf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77aminf.c



####################################################################



ATL_sf77gemv.o : $(HOMEdir)/ATL_f77gemv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77gemv.c

ATL_sf77gbmv.o : $(HOMEdir)/ATL_f77gbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77gbmv.c

ATL_sf77symv.o : $(HOMEdir)/ATL_f77symv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77symv.c

ATL_sf77sbmv.o : $(HOMEdir)/ATL_f77sbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77sbmv.c

ATL_sf77spmv.o : $(HOMEdir)/ATL_f77spmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77spmv.c

ATL_sf77trmv.o : $(HOMEdir)/ATL_f77trmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77trmv.c

ATL_sf77tbmv.o : $(HOMEdir)/ATL_f77tbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77tbmv.c

ATL_sf77tpmv.o : $(HOMEdir)/ATL_f77tpmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77tpmv.c

ATL_sf77trsv.o : $(HOMEdir)/ATL_f77trsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77trsv.c

ATL_sf77tbsv.o : $(HOMEdir)/ATL_f77tbsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77tbsv.c

ATL_sf77tpsv.o : $(HOMEdir)/ATL_f77tpsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77tpsv.c

ATL_sf77ger.o : $(HOMEdir)/ATL_f77ger.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77ger.c

ATL_sf77syr.o : $(HOMEdir)/ATL_f77syr.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77syr.c

ATL_sf77spr.o : $(HOMEdir)/ATL_f77spr.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77spr.c

ATL_sf77syr2.o : $(HOMEdir)/ATL_f77syr2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77syr2.c

ATL_sf77spr2.o : $(HOMEdir)/ATL_f77spr2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77spr2.c


ATL_df77gemv.o : $(HOMEdir)/ATL_f77gemv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77gemv.c

ATL_df77gbmv.o : $(HOMEdir)/ATL_f77gbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77gbmv.c

ATL_df77symv.o : $(HOMEdir)/ATL_f77symv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77symv.c

ATL_df77sbmv.o : $(HOMEdir)/ATL_f77sbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77sbmv.c

ATL_df77spmv.o : $(HOMEdir)/ATL_f77spmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77spmv.c

ATL_df77trmv.o : $(HOMEdir)/ATL_f77trmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77trmv.c

ATL_df77tbmv.o : $(HOMEdir)/ATL_f77tbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77tbmv.c

ATL_df77tpmv.o : $(HOMEdir)/ATL_f77tpmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77tpmv.c

ATL_df77trsv.o : $(HOMEdir)/ATL_f77trsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77trsv.c

ATL_df77tbsv.o : $(HOMEdir)/ATL_f77tbsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77tbsv.c

ATL_df77tpsv.o : $(HOMEdir)/ATL_f77tpsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77tpsv.c

ATL_df77ger.o : $(HOMEdir)/ATL_f77ger.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77ger.c

ATL_df77syr.o : $(HOMEdir)/ATL_f77syr.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77syr.c

ATL_df77spr.o : $(HOMEdir)/ATL_f77spr.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77spr.c

ATL_df77syr2.o : $(HOMEdir)/ATL_f77syr2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77syr2.c

ATL_df77spr2.o : $(HOMEdir)/ATL_f77spr2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77spr2.c


ATL_cf77gemv.o : $(HOMEdir)/ATL_f77gemv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77gemv.c

ATL_cf77gbmv.o : $(HOMEdir)/ATL_f77gbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77gbmv.c

ATL_cf77hemv.o : $(HOMEdir)/ATL_f77hemv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hemv.c

ATL_cf77hbmv.o : $(HOMEdir)/ATL_f77hbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hbmv.c

ATL_cf77hpmv.o : $(HOMEdir)/ATL_f77hpmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hpmv.c

ATL_cf77trmv.o : $(HOMEdir)/ATL_f77trmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77trmv.c

ATL_cf77tbmv.o : $(HOMEdir)/ATL_f77tbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77tbmv.c

ATL_cf77tpmv.o : $(HOMEdir)/ATL_f77tpmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77tpmv.c

ATL_cf77trsv.o : $(HOMEdir)/ATL_f77trsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77trsv.c

ATL_cf77tbsv.o : $(HOMEdir)/ATL_f77tbsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77tbsv.c

ATL_cf77tpsv.o : $(HOMEdir)/ATL_f77tpsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77tpsv.c

ATL_cf77geru.o : $(HOMEdir)/ATL_f77geru.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77geru.c

ATL_cf77gerc.o : $(HOMEdir)/ATL_f77gerc.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77gerc.c

ATL_cf77her.o : $(HOMEdir)/ATL_f77her.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77her.c

ATL_cf77hpr.o : $(HOMEdir)/ATL_f77hpr.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hpr.c

ATL_cf77her2.o : $(HOMEdir)/ATL_f77her2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77her2.c

ATL_cf77hpr2.o : $(HOMEdir)/ATL_f77hpr2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hpr2.c


ATL_zf77gemv.o : $(HOMEdir)/ATL_f77gemv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77gemv.c

ATL_zf77gbmv.o : $(HOMEdir)/ATL_f77gemv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77gbmv.c

ATL_zf77hemv.o : $(HOMEdir)/ATL_f77hemv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hemv.c

ATL_zf77hbmv.o : $(HOMEdir)/ATL_f77hbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hbmv.c

ATL_zf77hpmv.o : $(HOMEdir)/ATL_f77hpmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hpmv.c

ATL_zf77trmv.o : $(HOMEdir)/ATL_f77trmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77trmv.c

ATL_zf77tbmv.o : $(HOMEdir)/ATL_f77tbmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77tbmv.c

ATL_zf77tpmv.o : $(HOMEdir)/ATL_f77tpmv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77tpmv.c

ATL_zf77trsv.o : $(HOMEdir)/ATL_f77trsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77trsv.c

ATL_zf77tbsv.o : $(HOMEdir)/ATL_f77tbsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77tbsv.c

ATL_zf77tpsv.o : $(HOMEdir)/ATL_f77tpsv.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77tpsv.c

ATL_zf77geru.o : $(HOMEdir)/ATL_f77geru.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77geru.c

ATL_zf77gerc.o : $(HOMEdir)/ATL_f77gerc.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77gerc.c

ATL_zf77her.o : $(HOMEdir)/ATL_f77her.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77her.c

ATL_zf77hpr.o : $(HOMEdir)/ATL_f77hpr.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hpr.c

ATL_zf77her2.o : $(HOMEdir)/ATL_f77her2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77her2.c

ATL_zf77hpr2.o : $(HOMEdir)/ATL_f77hpr2.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hpr2.c


####################################################################



ATL_sf77gemvf.o : $(HOMEdir)/ATL_f77gemvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77gemvf.c

ATL_sf77gbmvf.o : $(HOMEdir)/ATL_f77gbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77gbmvf.c

ATL_sf77symvf.o : $(HOMEdir)/ATL_f77symvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77symvf.c

ATL_sf77sbmvf.o : $(HOMEdir)/ATL_f77sbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77sbmvf.c

ATL_sf77spmvf.o : $(HOMEdir)/ATL_f77spmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77spmvf.c

ATL_sf77trmvf.o : $(HOMEdir)/ATL_f77trmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77trmvf.c

ATL_sf77tbmvf.o : $(HOMEdir)/ATL_f77tbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77tbmvf.c

ATL_sf77tpmvf.o : $(HOMEdir)/ATL_f77tpmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77tpmvf.c

ATL_sf77trsvf.o : $(HOMEdir)/ATL_f77trsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77trsvf.c

ATL_sf77tbsvf.o : $(HOMEdir)/ATL_f77tbsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77tbsvf.c

ATL_sf77tpsvf.o : $(HOMEdir)/ATL_f77tpsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77tpsvf.c

ATL_sf77gerf.o : $(HOMEdir)/ATL_f77gerf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77gerf.c

ATL_sf77syrf.o : $(HOMEdir)/ATL_f77syrf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77syrf.c

ATL_sf77sprf.o : $(HOMEdir)/ATL_f77sprf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77sprf.c

ATL_sf77syr2f.o : $(HOMEdir)/ATL_f77syr2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77syr2f.c

ATL_sf77spr2f.o : $(HOMEdir)/ATL_f77spr2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77spr2f.c


ATL_df77gemvf.o : $(HOMEdir)/ATL_f77gemvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77gemvf.c

ATL_df77gbmvf.o : $(HOMEdir)/ATL_f77gbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77gbmvf.c

ATL_df77symvf.o : $(HOMEdir)/ATL_f77symvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77symvf.c

ATL_df77sbmvf.o : $(HOMEdir)/ATL_f77sbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77sbmvf.c

ATL_df77spmvf.o : $(HOMEdir)/ATL_f77spmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77spmvf.c

ATL_df77trmvf.o : $(HOMEdir)/ATL_f77trmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77trmvf.c

ATL_df77tbmvf.o : $(HOMEdir)/ATL_f77tbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77tbmvf.c

ATL_df77tpmvf.o : $(HOMEdir)/ATL_f77tpmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77tpmvf.c

ATL_df77trsvf.o : $(HOMEdir)/ATL_f77trsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77trsvf.c

ATL_df77tbsvf.o : $(HOMEdir)/ATL_f77tbsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77tbsvf.c

ATL_df77tpsvf.o : $(HOMEdir)/ATL_f77tpsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77tpsvf.c

ATL_df77gerf.o : $(HOMEdir)/ATL_f77gerf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77gerf.c

ATL_df77syrf.o : $(HOMEdir)/ATL_f77syrf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77syrf.c

ATL_df77sprf.o : $(HOMEdir)/ATL_f77sprf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77sprf.c

ATL_df77syr2f.o : $(HOMEdir)/ATL_f77syr2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77syr2f.c

ATL_df77spr2f.o : $(HOMEdir)/ATL_f77spr2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77spr2f.c


ATL_cf77gemvf.o : $(HOMEdir)/ATL_f77gemvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77gemvf.c

ATL_cf77gbmvf.o : $(HOMEdir)/ATL_f77gbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77gbmvf.c

ATL_cf77hemvf.o : $(HOMEdir)/ATL_f77hemvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hemvf.c

ATL_cf77hbmvf.o : $(HOMEdir)/ATL_f77hbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hbmvf.c

ATL_cf77hpmvf.o : $(HOMEdir)/ATL_f77hpmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hpmvf.c

ATL_cf77trmvf.o : $(HOMEdir)/ATL_f77trmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77trmvf.c

ATL_cf77tbmvf.o : $(HOMEdir)/ATL_f77tbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77tbmvf.c

ATL_cf77tpmvf.o : $(HOMEdir)/ATL_f77tpmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77tpmvf.c

ATL_cf77trsvf.o : $(HOMEdir)/ATL_f77trsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77trsvf.c

ATL_cf77tbsvf.o : $(HOMEdir)/ATL_f77tbsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77tbsvf.c

ATL_cf77tpsvf.o : $(HOMEdir)/ATL_f77tpsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77tpsvf.c

ATL_cf77geruf.o : $(HOMEdir)/ATL_f77geruf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77geruf.c

ATL_cf77gercf.o : $(HOMEdir)/ATL_f77gercf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77gercf.c

ATL_cf77herf.o : $(HOMEdir)/ATL_f77herf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77herf.c

ATL_cf77hprf.o : $(HOMEdir)/ATL_f77hprf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hprf.c

ATL_cf77her2f.o : $(HOMEdir)/ATL_f77her2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77her2f.c

ATL_cf77hpr2f.o : $(HOMEdir)/ATL_f77hpr2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hpr2f.c


ATL_zf77gemvf.o : $(HOMEdir)/ATL_f77gemvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77gemvf.c

ATL_zf77gbmvf.o : $(HOMEdir)/ATL_f77gemvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77gbmvf.c

ATL_zf77hemvf.o : $(HOMEdir)/ATL_f77hemvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hemvf.c

ATL_zf77hbmvf.o : $(HOMEdir)/ATL_f77hbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hbmvf.c

ATL_zf77hpmvf.o : $(HOMEdir)/ATL_f77hpmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hpmvf.c

ATL_zf77trmvf.o : $(HOMEdir)/ATL_f77trmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77trmvf.c

ATL_zf77tbmvf.o : $(HOMEdir)/ATL_f77tbmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77tbmvf.c

ATL_zf77tpmvf.o : $(HOMEdir)/ATL_f77tpmvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77tpmvf.c

ATL_zf77trsvf.o : $(HOMEdir)/ATL_f77trsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77trsvf.c

ATL_zf77tbsvf.o : $(HOMEdir)/ATL_f77tbsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77tbsvf.c

ATL_zf77tpsvf.o : $(HOMEdir)/ATL_f77tpsvf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77tpsvf.c

ATL_zf77geruf.o : $(HOMEdir)/ATL_f77geruf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77geruf.c

ATL_zf77gercf.o : $(HOMEdir)/ATL_f77gercf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77gercf.c

ATL_zf77herf.o : $(HOMEdir)/ATL_f77herf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77herf.c

ATL_zf77hprf.o : $(HOMEdir)/ATL_f77hprf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hprf.c

ATL_zf77her2f.o : $(HOMEdir)/ATL_f77her2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77her2f.c

ATL_zf77hpr2f.o : $(HOMEdir)/ATL_f77hpr2f.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hpr2f.c




####################################################################




ATL_sf77gemm.o : $(HOMEdir)/ATL_f77gemm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77gemm.c

ATL_sf77symm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77symm.c

ATL_sf77syr2k.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77syr2k.c

ATL_sf77syrk.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77syrk.c

ATL_sf77trmm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77trmm.c

ATL_sf77trsm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77trsm.c


ATL_df77gemm.o : $(HOMEdir)/ATL_f77gemm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77gemm.c

ATL_df77symm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77symm.c

ATL_df77syr2k.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77syr2k.c

ATL_df77syrk.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77syrk.c

ATL_df77trmm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77trmm.c

ATL_df77trsm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77trsm.c


ATL_cf77gemm.o : $(HOMEdir)/ATL_f77gemm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77gemm.c

ATL_cf77symm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77symm.c

ATL_cf77syr2k.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77syr2k.c

ATL_cf77syrk.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77syrk.c

ATL_cf77trmm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77trmm.c

ATL_cf77trsm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77trsm.c

ATL_cf77herk.o : $(HOMEdir)/ATL_f77herk.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77herk.c

ATL_cf77her2k.o : $(HOMEdir)/ATL_f77her2k.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77her2k.c

ATL_cf77hemm.o : $(HOMEdir)/ATL_f77hemm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hemm.c


ATL_zf77gemm.o : $(HOMEdir)/ATL_f77gemm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77gemm.c

ATL_zf77symm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77symm.c

ATL_zf77syr2k.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77syr2k.c

ATL_zf77syrk.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77syrk.c

ATL_zf77trmm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77trmm.c

ATL_zf77trsm.o : $(HOMEdir)/ATL_f77symm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77trsm.c

ATL_zf77herk.o : $(HOMEdir)/ATL_f77herk.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77herk.c

ATL_zf77her2k.o : $(HOMEdir)/ATL_f77her2k.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77her2k.c

ATL_zf77hemm.o : $(HOMEdir)/ATL_f77hemm.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hemm.c


#####################################################################




ATL_sf77gemmf.o : $(HOMEdir)/ATL_f77gemmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77gemmf.c

ATL_sf77symmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77symmf.c

ATL_sf77syr2kf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77syr2kf.c

ATL_sf77syrkf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77syrkf.c

ATL_sf77trmmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77trmmf.c

ATL_sf77trsmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL $(HOMEdir)/ATL_f77trsmf.c


ATL_df77gemmf.o : $(HOMEdir)/ATL_f77gemmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77gemmf.c

ATL_df77symmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77symmf.c

ATL_df77syr2kf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77syr2kf.c

ATL_df77syrkf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77syrkf.c

ATL_df77trmmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77trmmf.c

ATL_df77trsmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL $(HOMEdir)/ATL_f77trsmf.c


ATL_cf77gemmf.o : $(HOMEdir)/ATL_f77gemmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77gemmf.c

ATL_cf77symmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77symmf.c

ATL_cf77syr2kf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77syr2kf.c

ATL_cf77syrkf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77syrkf.c

ATL_cf77trmmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77trmmf.c

ATL_cf77trsmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77trsmf.c

ATL_cf77herkf.o : $(HOMEdir)/ATL_f77herkf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77herkf.c

ATL_cf77her2kf.o : $(HOMEdir)/ATL_f77her2kf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77her2kf.c

ATL_cf77hemmf.o : $(HOMEdir)/ATL_f77hemmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX $(HOMEdir)/ATL_f77hemmf.c


ATL_zf77gemmf.o : $(HOMEdir)/ATL_f77gemmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77gemmf.c

ATL_zf77symmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77symmf.c

ATL_zf77syr2kf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77syr2kf.c

ATL_zf77syrkf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77syrkf.c

ATL_zf77trmmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77trmmf.c

ATL_zf77trsmf.o : $(HOMEdir)/ATL_f77symmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77trsmf.c

ATL_zf77herkf.o : $(HOMEdir)/ATL_f77herkf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77herkf.c

ATL_zf77her2kf.o : $(HOMEdir)/ATL_f77her2kf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77her2kf.c

ATL_zf77hemmf.o : $(HOMEdir)/ATL_f77hemmf.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX $(HOMEdir)/ATL_f77hemmf.c



#####################################################################





sl1blastst.o : $(HOMEdir)/l1blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l1blastst.c

sl1blastst_pt.o : $(HOMEdir)/l1blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DSREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l1blastst.c

dl1blastst.o : $(HOMEdir)/l1blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l1blastst.c

dl1blastst_pt.o : $(HOMEdir)/l1blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DDREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l1blastst.c

cl1blastst.o : $(HOMEdir)/l1blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l1blastst.c

cl1blastst_pt.o : $(HOMEdir)/l1blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DSCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l1blastst.c

zl1blastst.o : $(HOMEdir)/l1blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l1blastst.c

zl1blastst_pt.o : $(HOMEdir)/l1blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DDCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l1blastst.c





sl2blastst.o : $(HOMEdir)/l2blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l2blastst.c

sl2blastst_pt.o : $(HOMEdir)/l2blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DSREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l2blastst.c

dl2blastst.o : $(HOMEdir)/l2blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l2blastst.c

dl2blastst_pt.o : $(HOMEdir)/l2blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DDREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l2blastst.c

cl2blastst.o : $(HOMEdir)/l2blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l2blastst.c

cl2blastst_pt.o : $(HOMEdir)/l2blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DSCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l2blastst.c

zl2blastst.o : $(HOMEdir)/l2blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l2blastst.c

zl2blastst_pt.o : $(HOMEdir)/l2blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DDCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l2blastst.c



sl3blastst.o : $(HOMEdir)/l3blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l3blastst.c 

sl3blastst_pt.o : $(HOMEdir)/l3blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DSREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l3blastst.c	

dl3blastst.o : $(HOMEdir)/l3blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l3blastst.c

dl3blastst_pt.o : $(HOMEdir)/l3blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DDREAL -DL2SIZE=$(L2SIZE) $(HOMEdir)/l3blastst.c

cl3blastst.o : $(HOMEdir)/l3blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DSCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l3blastst.c 

cl3blastst_pt.o : $(HOMEdir)/l3blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DSCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l3blastst.c

zl3blastst.o : $(HOMEdir)/l3blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DDCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l3blastst.c 

zl3blastst_pt.o : $(HOMEdir)/l3blastst.c $(INCdep)  
	$(ICC) -o $(GENlib)/$@ -c $(ICCFLAGS) -DATLCINT -DATL_USEPTHREADS \
		-DDCPLX -DL2SIZE=$(L2SIZE) $(HOMEdir)/l3blastst.c


######################################################################


xsl1blastst : $(INCdir)/atlas_type.h sl1blastst.o $(STsL1lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ sl1blastst.o $(STsL1lib) $(BLASLIB) $(LIBS)

xsl2blastst : $(INCdir)/atlas_type.h sl2blastst.o $(STsL2lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ sl2blastst.o $(STsL2lib) $(BLASLIB) $(LIBS)

xsl3blastst : $(INCdir)/atlas_type.h sl3blastst.o $(STsL3lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ sl3blastst.o $(STsL3lib) $(BLASLIB) $(LIBS)



xdl1blastst : $(INCdir)/atlas_type.h dl1blastst.o $(STdL1lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ dl1blastst.o $(STdL1lib) $(BLASLIB) $(LIBS)

xdl2blastst : $(INCdir)/atlas_type.h dl2blastst.o $(STdL2lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ dl2blastst.o $(STdL2lib) $(BLASLIB) $(LIBS)

xdl3blastst : $(INCdir)/atlas_type.h dl3blastst.o $(STdL3lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ dl3blastst.o $(STdL3lib) $(BLASLIB) $(LIBS)



xcl1blastst : $(INCdir)/atlas_type.h cl1blastst.o $(STcL1lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ cl1blastst.o $(STcL1lib) $(BLASLIB) $(LIBS)

xcl2blastst : $(INCdir)/atlas_type.h cl2blastst.o $(STcL2lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ cl2blastst.o $(STcL2lib) $(BLASLIB) $(LIBS)

xcl3blastst : $(INCdir)/atlas_type.h cl3blastst.o $(STcL3lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ cl3blastst.o $(STcL3lib) $(BLASLIB) $(LIBS)


xzl1blastst : $(INCdir)/atlas_type.h zl1blastst.o $(STzL1lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ zl1blastst.o $(STzL1lib) $(BLASLIB) $(LIBS)

xzl2blastst : $(INCdir)/atlas_type.h zl2blastst.o $(STzL2lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ zl2blastst.o $(STzL2lib) $(BLASLIB) $(LIBS)

xzl3blastst : $(INCdir)/atlas_type.h zl3blastst.o $(STzL3lib) prepare
	$(ICC) $(ICCFLAGS) -o $(GENbin)/$@ zl3blastst.o $(STzL3lib) $(BLASLIB) $(LIBS)




xsl1blastst_pt : $(INCdir)/atlas_type.h sl1blastst_pt.o $(PTsL1lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ sl1blastst_pt.o $(PTsL1lib) $(BLASLIB) $(LIBS)

xsl2blastst_pt : $(INCdir)/atlas_type.h sl2blastst_pt.o $(PTsL2lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ sl2blastst_pt.o $(PTsL2lib) $(BLASLIB) $(LIBS)

xsl3blastst_pt : $(INCdir)/atlas_type.h sl3blastst_pt.o $(PTsL3lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ sl3blastst_pt.o $(PTsL3lib) $(BLASLIB) $(LIBS)



xdl1blastst_pt : $(INCdir)/atlas_type.h dl1blastst_pt.o $(PTdL1lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ dl1blastst_pt.o $(PTdL1lib) $(BLASLIB) $(LIBS)

xdl2blastst_pt : $(INCdir)/atlas_type.h dl2blastst_pt.o $(PTdL2lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ dl2blastst_pt.o $(PTdL2lib) $(BLASLIB) $(LIBS)

xdl3blastst_pt : $(INCdir)/atlas_type.h dl3blastst_pt.o $(PTdL3lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ dl3blastst_pt.o $(PTdL3lib) $(BLASLIB) $(LIBS)



xcl1blastst_pt : $(INCdir)/atlas_type.h cl1blastst_pt.o $(PTcL1lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ cl1blastst_pt.o $(PTcL1lib) $(BLASLIB) $(LIBS)

xcl2blastst_pt : $(INCdir)/atlas_type.h cl2blastst_pt.o $(PTcL2lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ cl2blastst_pt.o $(PTcL2lib) $(BLASLIB) $(LIBS)

xcl3blastst_pt : $(INCdir)/atlas_type.h cl3blastst_pt.o $(PTcL3lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ cl3blastst_pt.o $(PTcL3lib) $(BLASLIB) $(LIBS)



xzl1blastst_pt : $(INCdir)/atlas_type.h zl1blastst_pt.o $(PTzL1lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ zl1blastst_pt.o $(PTzL1lib) $(BLASLIB) $(LIBS)

xzl2blastst_pt : $(INCdir)/atlas_type.h zl2blastst_pt.o $(PTzL2lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ zl2blastst_pt.o $(PTzL2lib) $(BLASLIB) $(LIBS)

xzl3blastst_pt : $(INCdir)/atlas_type.h zl3blastst_pt.o $(PTzL3lib) prepare
	cd $(GENlib) && \
	$(ICC) $(ICCFLAGS) -o ../$(GENbin)/$@ zl3blastst_pt.o $(PTzL3lib) $(BLASLIB) $(LIBS)



./refblas/librefblas.a : 
	$(MAKE) -C refblas all

./refblas_perf/librefblas_perf.a : 
	$(MAKE) -C refblas_perf all

ifdef ONLY_PERFORMANCE
refblas: ./refblas_perf/librefblas_perf.a
else
refblas: ./refblas/librefblas.a
endif

prepare : refblas
	-mkdir -p $(GENlib) $(GENbin)

clean :
	$(MAKE) -C refblas_perf clean
	$(MAKE) -C refblas clean
	rm -rf *.o
#$(GENlib) *.o

all-clean :
	rm -rf $(GENlib) $(GENbin)

