PROGRAM residual

  IMPLICIT NONE 

  REAL(8) :: s, dinf, delta, psi, a, b, r

  REAL(8) :: t1, t2, t12, t21, dspace
  
  REAL(8), DIMENSION(2) :: x
 
  INTEGER :: ji, jj

 INTEGER, PARAMETER ::  nx = 2000
  
 REAL(8), DIMENSION(nx,nx) :: res1 = 0.0, res2 = 0.0

 REAL(8) :: a1 = -2.0, b1 = -2.0, length

 
 

 x = 0.0

 
  delta = 0.0;
  
  s=0.767;
  
  dinf=3.00;

  psi=0.5;

  length = 2.0 * ABS( b1) 

  dspace = length / ( nx - 1)

  r = 1.0


  DO jj = 2, nx
  
     
     x(2) = b1 + ( jj - 1 ) * dspace
     
     DO ji = 2, nx

        x(1) = a1 + ( ji - 1 ) * dspace

     

     t1 = r*(1.0-(delta/dinf))-((r)/(dinf*dinf))*(psi-0.5)

     t12 = (1.0/r)*((2.0+r)* tanh((x(1)+x(2))/2.0) - 2.0 * x(2))

     t12 = t12 * t12 * (-0.5)

     t2 = (r)*(1.0-(delta/dinf))-((r)/(dinf*dinf))*(psi+0.5)

     t21 = -(1.0/r)*((2.0+r) * tanh((x(1)+x(2))/2.0) - 2.0 * x(1))

     t21 = t21 * t21 * (-0.5);
    
     res1(ji,jj) =  x(1) - t2 - t21

     res2(ji,jj) = x(2) - t1 - t12
  
  END DO
  


END DO


OPEN(10,FILE='res1.dat')


OPEN(11,FILE='res2.dat')


DO jj = 2, nx
  
   DO ji = 2, nx

      WRITE(10,*) a1 + ( ji - 1 ) * dspace, b1 + ( jj - 1 ) * dspace, ABS(res1(ji,jj))

      WRITE(11,*) a1 + ( ji - 1 ) * dspace, b1 + ( jj - 1 ) * dspace, ABS(res2(ji,jj))

   END DO

   WRITE(10,*)

   WRITE(11,*)


END DO

END PROGRAM residual
  
 
