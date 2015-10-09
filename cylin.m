close all

clear all

format long 


N = 200; % try 10 random start points

pts = 100*randn(N,2); % initial points are rows in pts

soln = zeros(N,2);

x0 = [1.001;0.001];  % Make a starting guess at the solution

options = optimset('Display','off','MaxFunEvals',2400,'TolX',1e-12); %FunEvals Option to display output


fid = fopen('./abresult.txt', 'w');


s=0.70;
  
dinf=3.2272;

dinf=3.6706;

dinf=5.081;

fprintf(fid, 's\t\t     dinfinity\t\t\n');

fprintf(fid,'%g\t\t\t %g\t \n',s,dinf);


fprintf(fid, 'x1\t\t     x2\t\t  fval1\t\t fval2\t\t constraint\t\t yhat\n\n');



for k = 1:N 


  [x,fval] = fsolve(@myfun,pts(k,:),options) % MaxFunEvalsCall solver

  
  x(1);

  x(2);

  disp('this is the constraint');

  

  t21c = -(1.0/s)*((2*cosh(x(1)+x(2))*sinh(x(1)))/sinh(x(1)+x(2))-2.0*cosh(x(1))+1.0)+s*tanh((x(1)+x(2))/2.0)

  
  
  tsht = (1.0/s^2.0) * ( 2.0 *sinh( x(1) ) * ( tanh(x(1)/2.0 + x(2)/2.0) -1.0 ) + 2.0 )  + (x(1) + x(2)) - 2.0 * tanh( x(1) / 2.0 + x(2) / 2.0 ); 

  tsht = (2.0/s^2.0) * ( sinh( x(1) ) / sinh(x(1)+x(2)) * ( cosh(x(1) + x(2)) -1.0 ) - cosh(x(1)) + 1.0)  + (x(1) + x(2) - 2.0 * tanh( x(1) / 2.0 + x(2) / 2.0 )); 




  yhat = dinf * tsht;



  %fprintf(fid,'%14.8f\t %14.8f\t %14.8f\t %14.8f\t %14.8f\t %14.8f\t %14.8f\n',x(1),x(2),fval(1),fval(2),t21c,yhat);
  if t21c > 0.0

  fprintf(fid,'%1.5e\t %1.5e\t %1.5e\t %1.5e\t %1.5e\t %1.5e\n',x(1),x(2),fval(1),fval(2),t21c,yhat);

  fprintf(fid, '\n');


  end

  
end

fclose(fid);