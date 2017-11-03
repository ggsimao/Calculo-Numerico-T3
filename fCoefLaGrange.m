function sum = fCoefLaGrange(xs, ys, x)
  sum = 0;
  n = length(xs) - 1;
  for i = 1 : n
    prod(i) = 1;
    for j = 1 : n
      if (i != j)
        prod(i) = prod(i) * ((x-xs(j))/(xs(i)-xs(j)));
      endif
    endfor
    sum = sum + (ys(i) * prod(i));
  endfor
  
endfunction