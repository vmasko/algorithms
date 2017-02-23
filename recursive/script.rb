require 'benchmark'

def iterative_factorial(n)
  number = 1
  for i in 1..n
    number *= i
  end
  number
end

def recursive_factorial(n)
  return 1 if n == 0
  recursive_factorial(n - 1) * n
end

Benchmark.bm do |x|
  puts x.report { recursive_factorial(10_000) }
  puts x.report { iterative_factorial(10_000) }
end