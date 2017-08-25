puts "Do you like cats?"
response = gets.chomp

def like_cats(response)
if response == "yes"
  return "Ken does too."
  else "Dogs are better!"
 end
end

puts like_cats(response)