# Request input from user in lbs and convert to kgs

def pounds(lbs) # define method "pounds"
    return lbs * 0.45 # convert lbs to kg
end

puts "Please write a number in pounds (lbs) that you would like converted to kilograms (kgs)."
print "Number in pounds (lbs): "

lbs = gets.to_f # Assigns "lbs" variable to user input
puts "#{lbs} lbs is equal to #{pounds(lbs)} kgs." # Output of lbs to kg string