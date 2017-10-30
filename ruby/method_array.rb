def method(array)
  p array.reject {|element| array.count(element) > 1 }
end

ray = [1,1,2,2,7,8,9,9,9,4,2,2,2,1,1,3,2,20,40]
method(ray)

# the method "method" is defined with a parameter of "array"
# it calls a block to print a new array after
# counting the defined variable "element" within the array
# and if the "element" is listed more than once, remove it
# then it assigns an array to "ray"
# calls the method with the argument of "ray"
# for an output of:
# => [7, 8, 4, 3, 20, 40]

# A block is called to print a new array after counting the defined variable
# within the array. If the `element` is listed more than once, remove it.