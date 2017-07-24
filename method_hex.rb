def method(hex_value)
  hex_pairs = hex_value.to_s(16).upcase.scan(/../)
  hex_pairs.map do |x|
    (x.hex / 255.0).round(2)
  end
end

p method(0x33BAE7)

# the method "method" is defined with a parameter of "hex_value"
# `hex_pairs` is assigned to make `hex_value` a hexadecimal string with a base of 16
# made to be in upcase and scanned for a regular expression /../
# map is then run on `hex_pairs` which runs the block for each element
# and outputs each returned value from the block e.g. [x, y, z]
# the value `x` is divided by 255.0 and rounded to 2 decimal points e.g. 0.36 vs. 0.1
# calls the method to be printed with the argument of "0x33BAE7"
# for an output of:
# => [0.2, 0.73, 0.91]
