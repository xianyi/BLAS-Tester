## BLAS-Tester
BLAS is an important building block in scientific and engineering application. This purpose of this porject is testing BLAS library. First, it compares the result with netlib reference BLAS. Then, it measures the performance. This project is based on the tester from ATLAS <http://math-atlas.sf.net>.

BLAS-Tester is supported by Lab of Parallel Software and Computational Science,ISCAS <http://www.rdcps.ac.cn>. We use this project to test OpenBLAS <http://xianyi.github.com/OpenBLAS>.

## License
  BSD

##Examples:
On X86 CPU
make TEST_BLAS=/opt/OpenBLAS/lib/libopenblas.a ARCH=X86 NUMTHREADS=8 L2SIZE=4194304

On Loongson 3A 64-bit
make TEST_BLAS=/opt/OpenBLAS/lib/libopenblas.a ARCH=Loongson BINARY=32 NUMTHREADS=4 L2SIZE=4194304

L2SIZE: 4M=4194304 6M=6291456 8M=8388608 12M=12582912

##Tip for Intel Compiler
If BLAS library is built by ifort, you should set F_INTERFACE_INTEL=1 .

