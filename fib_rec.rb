# fibonacci recursive

def fib(num)
  return num if num <= 1
  fib(num-1) + fib(num-2)
end

puts fib(35)
# puts "#{num}'s fibonacci value is #{fib(num)}"

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end