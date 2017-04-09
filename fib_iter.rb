# fibonacci iterative

def fib(num)
  x = 0
  y = 1
  num.times do
    temp_num = x
    x = y
    y = temp_num + y
  end
    return x
end

35.times do |num|
  output = fib(num)
  puts output
end

# puts "#{num}'s fibonacci value is #{fib(num)}"

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end