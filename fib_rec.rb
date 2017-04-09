# fibonacci recursive

# input n
# if n = 1, output 1
# if n > 2, output sum of previous two values
# print the output of n

num = 35
def fib(num)
  return num if num <= 1
  fib(num-1) + fib(num-2)
end

puts "#{num}'s fibonacci value is #{fib(num)}"

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end