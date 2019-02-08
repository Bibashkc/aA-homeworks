class Stack
    attr_reader :stacks

    def initialize
        @stacks = []
    end

    def push(el)
        @stacks << el
    end

    def pop
        @stacks.pop
    end
     
    def peek
        @stacks[-1]
    end

end

