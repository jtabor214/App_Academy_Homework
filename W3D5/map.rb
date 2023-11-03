class Map 

    attr_reader :stack

    def initialize(hash_array)
        @stack = hash_array
    end

    def set(key, value)
        @stack.each do |hash|
            if hash[0] == key
                hash[0] = value
            # else
            #     hash[key] = value
            end
        end
        # @stack
    end

    def get(key)
        @stack.each do |hash|
            if hash[0] == key
                return hash[0]
            end
        end
    end

    def delete(key)
        @stack.each_with_index do |hash, idx|
            if hash[0] == key
                @stack.delete_at(idx)
            end
        end
        @stack
    end

    def show
        puts @stack
    end

end

a = Map.new([["fruit", "apple"], ["pet", "dog"], ["cloth", "wool"], ["drink", "tea"]])
p a.get("pet")
p a.set("pet", "cat")
p a.delete("cloth")