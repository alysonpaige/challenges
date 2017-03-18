# step 1
valid.to_s
valid.to_s.split('')
valid.to_s.split('').map(&:to_i)
# map applies transformation to each element removes quotes
[1,2,3].map {|num| num + 1}
valid_cc_num = 4194560385008504
valid_cc_num.to_s.each_char.map(&:to_i)

# step 2 & 3
valid_digits[index] * 2 # doubles
temp = valid_digits[4] * 2
temp - 9 if temp > 10
if temp > 10  then temp - 9 else temp end
valid_digits.each {|digit| puts digit }

curr = valid_digits.length
valid_digits[15]
curr = valid_digits.length - 1
# start at end of cc num arrays, use index
# decrementing by index
# break out of loop, when get to point less than 0
valid_digits[-1]
valid_digits[-valid_digits.length]
return valid_digits
while curr >= -valid_digits.length # length of array
# curr pointer to always be greater than or equal to
new_digit = valid_digits[curr] * 2
new_digit -= 9 if new_digit >= 10
# doubled - 9, shorthand -=
valid_digits[curr] = new_digit
curr -= 2 # decredement by 2
end

# step 4
[1,2,3].reduce(:+)
# => 6
# starts with 0 value
[1,5,1].reduce(0) {|accumulator, element| accumulator + element}
# => 7
[1,5,1].reduce(:+)

valid_digits.reduce(:+)
# => 60

# % mod is remainder

27.divmod(5)
# division and mod, quotiant and remainder

# is divisible by 10
valid_digits.reduce(:+) % 10
# => 0
valid_digits.reduce(:+) % 10 == 0
# => true

# easier way for steps 2/3
[1,2,3,4].each_slice(2) {|n,m| print(m)}
[1,2,3,4].reverse.each_slice(2) {|n,m| print(m)}