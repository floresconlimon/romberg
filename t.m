function [d] = t(n, f, a, b)
  z = h(n, a, b);
  x = 0;
  for i = 1:(n-1)
    y = a + i * z;
    y = f(y);
    x = x + y;
  end
  x = x * 2;
  x = x + f(a) + f(b);
  d = x* (z/2);
end
