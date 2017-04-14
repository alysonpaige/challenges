# fibonacci recursive

def fib(num)
  return num if num <= 1
  fib(num-1) + fib(num-2)
end

puts fib(35)
# puts "#{num}'s fibonacci value is #{fib(num)}"