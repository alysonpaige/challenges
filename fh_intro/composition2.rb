def unique(a)
  b = []
  a.each do |numbers|
    if ! b.include?(numbers)
      b.push(numbers)    
    end  
  end  
  return b
end

array_one = [1, 2, 3, 3, 4, 5, 5, 6, 6, 6, 7, 8, 11, 13]

puts unique(array_one).inspect