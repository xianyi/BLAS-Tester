      integer function ixaminf(n,zx,incx)
c
c     finds the index of element having min. absolute value.
c     jack dongarra, 1/15/85.
c     modified 3/93 to return if incx .le. 0.
c     modified 12/3/93, array(1) declarations changed to array(*)
c
      complex zx(*)
      real smin
      integer i,incx,ix,n
      real qcabs1

      return
      end
