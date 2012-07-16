function [q] = r(n, f, a, b)
  z=h(n, a, b);
  x = 0;
  for i = 1:10
      y = a + (i - 0.5)*z;
      y = f(y);
      x = x + y;
  end
  q = x * z;
end
