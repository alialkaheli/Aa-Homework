class LRUCache
    def initialize(len)
      @len = len
      @lru_cache = []
    end

    def count
      @lru_cache.length

    end

    def add(el)
      adding_el(el)

    end

    def show
      p @lru_cache
    end

    private
    def adding_el(el)
      @lru_cache.delete(el) if @lru_cache.include?(el)
      @lru_cache.shift if @len <= count
      @lru_cache << el
    end 
end
