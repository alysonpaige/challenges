module Luhn
  # why module, not class?
  # initialize v. new?

  def self.is_valid?(number)
    self.new.is_valid?(number)
  end

  def is_valid?(number)
    sum = 0
    number_array = number.to_s.split('') # break cc into ind. digits
    number_array = number_array.reverse # start from the right

    # loop through every digit_with_index and add the digit to the sum
    number_array.each_with_index do |digit, index|
    if (index % 2 != 0) # every other number starting with the first
      sum += digit.to_i * 2 >= 10 ? digit.to_i*2-9 : digit.to_i*2
    else
      sum += digit.to_i
    end
  end

    if (sum % 10) == 0
      return true
    else
      return false
    end
  end
end