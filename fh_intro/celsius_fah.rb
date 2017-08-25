def celsius(cdeg) # define method "celsius"
    return cdeg * 1.8 + 32 # convert celsius to fahrenheit
end

puts "Please enter degrees in Celsius" # Message to user
cdeg = gets.to_f # Assigns "celsius" variable to user input
puts "The temperature #{cdeg} Celsius is #{celsius(cdeg)} degrees Fahrenheit." # Output to user