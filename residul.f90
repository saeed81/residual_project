PROGRAM residual

  IMPLICIT NONE 

  REAL(8) :: s, dinf, delta, psi, a, b

  REAL(8) :: t1, t2, t12, t21, dspace
  
  REAL(8), DIMENSION(2) :: x
 
  INTEGER :: ji, jj

 INTEGER, PARAMETER ::  nx = 1000
  
 REAL(8), DIMENSION(nx,nx) :: res1 = 0.0, res2 = 0.0

 x = 0.0
 
 delta = 1.679;
 
 s=0.72;
 
 dinf=3.577;
 
 psi=0.0;
 
 dspace = 1.0 / ( nx - 1)


  DO jj = 2, nx
  
     
     x(2) = 0.0 + ( jj - 1 ) * dspace
     
     DO ji = 2, nx

        x(1) = 0.0 + ( ji - 1 ) * dspace

     

     t1 = s*s*(1.0-(delta/dinf))-((s*s)/(dinf*dinf))*(psi-0.5)

     t12 = (1.0/s)*(1-(2.0*sinh(x(1))/sinh(x(1)+x(2))))-s*tanh((x(1)+x(2))/2.0)

     t12 = t12 * t12 * (-0.5)

     t2 = (s*s)*(1.0-(delta/dinf))-((s*s)/(dinf*dinf))*(psi+0.5)

     t21 = -(1.0/s)*((2.0*cosh(x(1)+x(2))*sinh(x(1)))/sinh(x(1)+x(2))-2.0*cosh(x(1))+1.0)+s*tanh((x(1)+x(2))/2.0)

     t21 = t21 * t21 * (-0.5);
    
     res1(ji,jj) =  x(1) - t2 - t21

     res2(ji,jj) = x(2) - t1 - t12
  
  END DO
  


END DO


OPEN(10,FILE='res1.dat')


OPEN(11,FILE='res2.dat')


DO jj = 2, nx
  
   DO ji = 2, nx

      WRITE(10,*) 0.0 + ( ji - 1 ) * dspace, 0.0 + ( jj - 1 ) * dspace, ABS(res1(ji,jj))

      WRITE(11,*) 0.0 + ( ji - 1 ) * dspace, 0.0 + ( jj - 1 ) * dspace, ABS(res2(ji,jj))

   END DO

   WRITE(10,*)

   WRITE(11,*)


END DO

END PROGRAM residual
  
 
