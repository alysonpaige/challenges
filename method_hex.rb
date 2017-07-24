def method(hex_value)
  hex_pairs = hex_value.to_s(16).upcase.scan(/../)
  hex_pairs.map do |x|
    (x.hex / 255.0).round(2)
  end
end

p method(0x33BAE7)


# => [0.2, 0.73, 0.91]
