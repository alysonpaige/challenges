# Given an array of integers
# find the pair of adjacent elements
# that has the largest product and return it

def adjacentElementsProduct(inputArray)
    inputArray.each_cons(2).map { |a, b| (a * b ) }.max
end

p adjacentElementsProduct([3, 6, -2, -5, 7, 3])



# alt solution
def adjacentElementsProduct(inputArray)
    productArray = []
    (inputArray.length - 1).times do |i|
        productArray << inputArray[i] * inputArray[i + 1]
    end
    productArray.max
end
