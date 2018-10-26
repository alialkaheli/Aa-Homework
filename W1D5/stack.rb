class Stack
  attr_reader :stack
    def initialize
      @stack =[]
      # create ivar to store stack here!
    end

    def push(el)
      # adds an element to the stack
      @stack.push(el)
      el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
  end
