module Luhn

  def self.is_valid?(number)
    sum = 0
    number_array = number.to_s.split('') # break cc into ind. digits
    number_array = number_array.reverse # start from the right

    # loop through every digit_with_index
    # add the digit to the sum
    number_array.each_with_index do |digit, index|
      d = digit.to_i

      # every other number starting with the first
      if index.odd? 
        sum += odd_value_sum(d)
      else
        sum += d
      end
    end

    if (sum % 10) == 0
      return true
    else
      return false
    end
  end

  # Why use self here and separate this method?
  def self.odd_value_sum(digit)
    doubled = digit * 2

    return doubled if doubled < 10
    doubled - 9 
  end
end