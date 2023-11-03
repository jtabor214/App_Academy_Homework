class Stack

    def initialize(array)
        @stack = array
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.delete_at(-1)
        return @stack
    end
    
    def peek
        return @stack[-1]
    end

end

#arr = [1, 3, 4, 5, 7, 8, 9]
arr = Stack.new([1, 3, 4, 5, 7, 8, 9])
p arr.pop
p arr.peek
p arr.pop
p arr.push(8)