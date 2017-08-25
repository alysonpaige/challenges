puts "How many items do you want to see?"
user_input = gets.to_i
user_input.times do |a|
    a += 1
    b = a % 3
    c = a % 5
    if b == 0 && c == 0
      puts "foobar "
    elsif b == 0
      puts "foo "
    elsif c == 0
      puts "bar "
    else
      puts "#{a} "
    end
end