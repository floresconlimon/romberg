function [q] = s(i, k, n, f, a, b)
  if i==0 && k==0
    q = t(n, f, a, b);
  elseif  k==0
    q = t(n * 2^i, f, a, b);
  else
    x = s(i, (k - 1), n, f, a, b);
    y = s((i-1), (k-1), n, f, a, b);
    q = x+ (x-y)/(4^k -1);
  end
end
 
