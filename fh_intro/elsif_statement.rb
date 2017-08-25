puts "Do you like cats?"
response = gets.chomp

def like_cats(response)
if response == "yes"
  return "Ken does too."
elsif response == "no"
  return "Dogs are better!"
else
  return "It's hard to decide."
 end
end

puts like_cats(response)