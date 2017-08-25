puts "Enter a number:"
user_number = gets.to_i

def digit(user_number)
  lop_off = user_number % 10
  lop_off2 = user_number % 100
  
  if lop_off2 >= 11 && lop_off2 <=13
    return "That's the #{user_number}th item."
  elsif lop_off == 1
    return "That's the #{user_number}st item."
  elsif lop_off == 2
    return "That's the #{user_number}nd item."
  elsif lop_off == 3
    return "That's the #{user_number}rd item."
  else
    return "That's the #{user_number}th item."
  end
end
  
puts digit(user_number)