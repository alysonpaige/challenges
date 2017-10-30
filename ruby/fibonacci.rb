def iterative_fib(num)
  f0 = 0
  f1 = 1
  num.times do
    f0, f1 = f1, f0 + f1
  end
  return f0
end

def recursive_fib(num)
  return num if num <= 1
  recursive_fib(num-1) + recursive_fib(num-2)
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("iterative_fib")  { iterative_fib(num) }
  x.report("recursive_fib") { recursive_fib(num) }
end