# Given an array of integers
# find the pair of adjacent elements
# that has the largest product and return it

def adjacentElementsProduct(inputArray)
    inputArray.each_cons(2).map { |a, b| (a * b ) }.max
end

p adjacentElementsProduct([3, 6, -2, -5, 7, 3])