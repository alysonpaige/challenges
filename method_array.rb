def method(array)
  p array.reject {|element| array.count(element) > 1 }
end

ray = [1,1,2,2,7,8,9,9,9,4,2,2,2,1,1,3,2,20,40]
method(ray)

# => [7, 8, 4, 3, 20, 40]

# the method "method" is defined with an "array" argument
# it calls a block to print a new array
# counting the defined "elements" in the array
# and if they're listed more than once, remove them
# assigns an array value to the key "ray"
# calls the method with the parameter of "ray"