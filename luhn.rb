class individual_cc
  def start_from_right_2x_digits
  end

  def if_value_greater_10
  end

  def sum_digits
  end

  def sum_divisible
  end
end

def validCC(cardNumber)
  sum = 0
  nums = cardNumber.to_s.split("")
  nums.insert(nums.size, "x")
  nums.reverse!
  nums.each_with_index do |n, i|
      if !n.eql?("x")
          sum += (i % 2 == 0) ? n.to_i : n.to_i * 2
      end
  end
  if (sum % 10) == 0
      return true
  else
      return false
  end
end

# no class, just method?