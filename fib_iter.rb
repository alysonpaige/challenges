# fibonacci iterative

def fib(num)
  fib0 = 0
  fib1 = 1
  num.times do
    fib0, fib1 = fib1, fib0 + fib1
  end
  return fib0
end

puts fib(35)
# puts "#{num}'s fibonacci value is #{fib(num)}"

# require 'benchmark'
# num = 35
# Benchmark.bm do |x|
#   x.report("recursive_fib") { recursive_fib(num) }
#   x.report("iterative_fib")  { iterative_fib(num)  }
# end