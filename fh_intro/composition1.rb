input = []
puts "Write values separated by enter, when finished write - end:"
loop do
  item = gets.chomp
  break if item == 'end'  
  input.push(item)
end

puts "The array is #{input}."
puts "The array has got #{input.count} items."

def ladislav_unique(array)
    unq = []
	array.each do |item|
	  if unq.include?(item)
	  false
	  else unq.push(item)
	  end
	end

	return unq
end
new_uniq = ladislav_unique(input)
puts "The unique array is #{new_uniq}."
puts "Unique array has got #{new_uniq.count} items."