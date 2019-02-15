class LRUCache
    attr_reader :cache_array
    def initialize(cache_array)
        @length = cache_array
        @cache_array = Array.new(@length)
    end

    def count
        cache_array.count
    end

    def add(el)
        make_space(el) if count == @length
        cache_array << el
    end

    def show
        print cache_array
    end
    
    private
     
    def make_space(el)
    if cache_array.include?(el)
       cache_array.select!{|elem| elem!=el}  
    else
      cache_array.shift
    end
end
end