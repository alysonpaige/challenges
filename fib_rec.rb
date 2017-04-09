# fibonacci recursive

def fib(n)
  return n if n <= 1
  fib(n-1) + fib(n-2)
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end