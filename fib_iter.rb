# fibonacci iterative

# num represents fib index number
# loop (num) of times
# store new values
# after executing math
# alternatively, could store in array and .each loop
def fib(num)
  fib0 = 0
  fib1 = 1
  num.times do
    fib0, fib1 = fib1, fib0 + fib1
  end
  return fib0
end

puts fib(35)

# require 'benchmark'
# num = 35
# Benchmark.bm do |x|
#   x.report("recursive_fib") { recursive_fib(num) }
#   x.report("iterative_fib")  { iterative_fib(num)  }
# end