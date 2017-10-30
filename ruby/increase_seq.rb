# Given a sequence of integers as an array,
# determine whether it is possible to obtain a strictly increasing sequence
# by removing no more than one element from the array.

def almostIncreasingSequence(sequence)
    index = 0 ;
    while index < sequence.length     
        new_arr = sequence.dup
        new_arr.delete_at(index)
        if (sorted(new_arr))
            return true
        end
        index += 1;
    end
    return false;
end


def sorted(arr)
    index = 0     
    while index < arr.length-1
        if arr[index] >= arr[index+1]
            return false
        end
        index += 1
    end
    return true
end

# [1, 10, 7, 9, 8] => false
# [1, 10, 7, 9, 10] => true