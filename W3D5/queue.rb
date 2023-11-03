class Queue

    def initialize(array)
        @stack = array
    end

    def enqueue(el)
        @stack.unshift(el)
    end

    def dequeue
        @stack.pop
        return @stack
    end

    def peek
        return @stack[0]
    end

end

a = Queue.new([1,2,3,4,5,6])
p a.dequeue
p a.enqueue(4)
p a.peek