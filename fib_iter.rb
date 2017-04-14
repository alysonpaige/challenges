# fibonacci iterative

def fib(num)
  f0 = 0
  f1 = 1
  num.times do
    f0, f1 = f1, f0 + f1
  end
  return f0
end

puts fib(35)