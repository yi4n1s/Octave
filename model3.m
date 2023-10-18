##function x = model2b(y,z)
##  n = length(y);
##  x = zeros(1,n);
##  for i=1:n
##    x(i) = 3*y(i) + z(i)^2;
##  endfor
##endfunction
##
##function x = model3(y,z)
##  x = 3*y.*z + z.^2;
##endfunction

##function x = model4(y,z)
##  n = length(y);
##  x = zeros(1,n);
##  for i=3:n+1
##    x(i) = 3*y(i-1) + y(i-2)
##  endfor
##endfunction
##
##function x = model4b(y)
##  x = 3*y(2:n) + y(1:n-1);
##endfunction

##function x = model5(y,z)
##  n = length(y);
##  x = zeros(1,n);
##  for i=3:n
##    x(i) = 3*z(i-2)^2*y(i) + 12*y(i-1)
##  endfor
##endfunction

##function x = model5b(y,z)
##  x = 3*z(1:n-2).^2.*y(3:n) + 12*y(2:n-1);
##endfunction

##function x = model6(x1,x2,n)
##  x = zeros(1,n);
##  x(1) = x1;
##  x(2) = x2;
##  for i=3:n
##    x(i) = 3*x(i-1) + 12*x(i-2)
##  endfor
##endfunction

function x = exc1(y,z)
  x = y(1:n-2) + z(1:n-2).*y(3:n);
endfunction

function x = exc2(y)
  x = 3*y(1:n).^4 + y(1:n).^3 - 5*y(1:n).^2;
endfunction

function x = exc3(y,z)
  x = z(1:n-1).*y(2:n).^2 + y(1:n-1).*z(2:n).^2;
endfunction

function x = exc4(x1,x2,n)
  x = zeros(1,n);
  x(1) = x1;
  x(2) = x2;
  for i=3:n
    x(i) = 3*x(i-1) + 12*x(i-2)
  endfor
endfunction

function x = exc5(x2,y)
  n = lenght(y);
  x = zeros(1,n+2);
  x(2) = x2;
  for i=3:n+2
    x(i) = 3*x(i-1) + 12*y(i-2);
  endfor 
endfunction

function x = exc6(x1,x2,y,z)
  n = lenght(y);
  x = zeros(1,n);
  x(1) = x1;
  x(2) = x2;
  for i=3:n
    x(i) = -4*x(i-1) + 2*x(i-2)*y(i-1) + 2*z(i)^3;
  endfor 
endfunction