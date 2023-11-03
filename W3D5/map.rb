class Map 

    def initialize(hash_array)
        @stack = hash_array
    end

    def set(key, value)
        @stack.each do |hash|
            if hash[0] == key
                hash[0] = value
            else
                hash[key] = value
            end
        end
        @stack
    end

    def get(key)
        @stack.each do |hash|
            if hash[0] == key
                return hash[0]
            end
        end
    end

    def delete(key)
        @stacks.each do |hash|
            if hash[0] == key
                hash.delete_at(0)
            end
        end
        @stacks
    end

    def show
        puts @stacks
    end

end

a = Map.new([["fruit", "apple"], ["pet", "dog"], ["cloth", "wool"], ["drink", "tea"]])
p a.get("fruit")