class Map
    attr_reader :map_array
    def initialize
        @map_array = []
    end

    def set (key,value)
        hash = Hash[*@map_array.flatten]
        hash[key] = value
       @map_array = hash.to_a
    end
    def get(key)
        hash = Hash[*@map_array.flatten]
        hash.select{|k,v| k==key}.to_a.flatten
    end

    def delete(key)
        Hash[*@map_array.flatten].reject!{|k,v|k==key}.to_a
    end

    def show
        @map_array
    end


end