require 'matrix'

limit = 10**999
FIBONACCI_MATRIX = Matrix[[1,1],[1,0]]
def fibonacci(n)
  (FIBONACCI_MATRIX**(n-1)) [0,0]
end
i = 1
i+=1 while fibonacci(i) < limit
puts i
