# fibonacci iterative

# num is fib index number
# alternatively, could store in array
# and use (0..num) each loop
def fib(num)
  f0 = 0
  f1 = 1
  num.times do
    f0, f1 = f1, f0 + f1
  end
  return f0
end

puts fib(7)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end