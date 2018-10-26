class Queue
  attr_reader :queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
    #@queue.unshift(el) #either one
    el
  end

  def dequeue
    @queue.shift
    #@queue.pop #if i am using unshift for enqueue
  end

  def peek
    @queue[0]
  end
end
