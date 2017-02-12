class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        stack.push(1)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
        puts stack.pop
    end

    def reverse_list(list)
        # ADD CODE HERE

        while list
            # ADD CODE HERE
            list = list.next_node
        end

        # ADD CODE HERE
    end

end

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)