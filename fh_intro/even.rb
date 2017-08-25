def is_even_and_divisible_by_five?(n)
  remainder_when_divided_by_5 = n % 5
  remainder_when_divided_by_2 = n % 2
  
  if remainder_when_divided_by_5 == 0 && remainder_when_divided_by_2 == 0
    return true
  else
    return false
  end
end

puts "1 is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(1)}"
puts "5 is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(5)}"
puts "10 is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(10)}"
puts "20 is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(20)}"
puts "45 is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(45)}"
puts "60 is_even_and_divisible_by_five? #{is_even_and_divisible_by_five?(60)}"