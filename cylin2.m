close all

clear all

format long 


N = 200; % try 10 random start points

pts = 100*randn(N,2); % initial points are rows in pts

soln = zeros(N,2);

x0 = [1.001;0.001];  % Make a starting guess at the solution

options = optimset('Display','off','MaxFunEvals',2400,'TolX',1e-12); %FunEvals Option to display output


fid = fopen('./abresult2.txt', 'w');


s=0.74;
  
dinf=3.2272;

dinf=3.6706;

dinf=5.081;

dinf=3.6706;


fprintf(fid, 's\t\t     dinfinity\t\t\n');

fprintf(fid,'%g\t\t\t %g\t \n',s,dinf);


fprintf(fid, 'x1\t\t     x2\t\t  fval1\t\t constraint\t\t yhat\n\n');



for k = 1:N 

  pts(k,1) = (k -1 ) * 0.005;

  pts(k,2) = 0.01;

  if pts(k,1) < 0.4

  %[x,fval] = fsolve(@myfun1,pts(k,:),options); % MaxFunEvalsCall solver

  [x,fval] = fzero(@(x) myfun2(x,pts(k,1)),pts(k,2)); % MaxFunEvalsCall solver


  
  pts(k,1);

  x;

  disp('this is the constraint');

  

  %t21c = -(1.0/s)*((2*cosh(pts(k,1)+x)*sinh(pts(k,1)))/sinh(pts(k,1)+x)-2.0*cosh(pts(k,1))+1.0)+s*tanh((pts(k,1)+x)/2.0);

  
  
  %tsht = (1.0/s^2.0) * ( 2.0 *sinh( pts(k,1) ) * ( tanh(pts(k,1)/2.0 + x/2.0) -1.0 ) + 2.0 )  + (pts(k,1) + x) - 2.0 * tanh( pts(k,1) / 2.0 + x / 2.0 ); 

  %tsht = (2.0/s^2.0) * ( sinh( pts(k,1) ) / sinh(pts(k,1)+x) * ( cosh(pts(k,1) + x) -1.0 ) - cosh(pts(k,1)) + 1.0)  + (pts(k,1) + x - 2.0 * tanh( pts(k,1) / 2.0 + x / 2.0 )); 




  %yhat = dinf * tsht;



  %fprintf(fid,'%14.8f\t %14.8f\t %14.8f\t %14.8f\t %14.8f\t %14.8f\t %14.8f\n',pts(k,1),x,fval(1),fval(2),t21c,yhat);
  %%%%if t21c > 0.0

  fprintf(fid,'%1.5e\t %1.5e\t %1.5e\t %1.5e\t \n',pts(k,1),x,fval(1));

  fprintf(fid, '\n');

  end

  %%%%end

  
end

fclose(fid);