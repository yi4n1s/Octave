##function [p,q,z] = summatrix(A)
##  [n,m] = size(A);
##  p = 0;
##  q = 0;
##  z = 0;
##  for i=1:n
##    for j=1:m
##      if A(i,j) > 0
##        p = p + A(i,j);
##      elseif A(i,j) < 0
##        q = q + A(i,j);
##      else
##        z = z+1;
##      endif
##    endfor
##  endfor
##  #disp(p,q,z)
##endfunction

function [q] = summatrix(A)
  [n,m] = size(A);
  q = 0;
  for i=1:n
    for j=1:m
      if A(i,j) < 0
        q = q + 1;
      endif
    endfor
  endfor
endfunction