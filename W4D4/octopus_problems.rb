def sluggish_octopus(fishes)
    fishes.each_with_index do |fish1, idx1|
        max_length = true
        fishes.each_with_index do |fish2, idx2|
            next if idx1 == idx2 
            if fish2.length > fish1.length
                max_length = false  
            end
        end
        return fish1 if max_length == true
    end 
        
end

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
class Array

    def dominant_octopus(&prc)
        prc || Proc.new { |x, y| x<=>y }
        return self if self.length <= 1

        mid = self.length / 2
        left = self[0...mid]
        right = self[mid..-1]

        sorted_left = left.dominant_octopus(&prc)
        sorted_right = right.dominant_octopus(&prc)

        Array.merge(sorted_left, sorted_right, &prc)
    end

    def self.merge(left, right, &prc)
        array = []

        until left.empty? || right.empty?
            if prc.call(left.first, right.first) == -1
                array << left.shift
            else
                array << right.shift
            end
        end
        array + left + right
    end

end

class Array

    def clever_octopus(target) #target would be the longest fish
        return nil if self.empty?
        mid = self.length / 2
        return mid if self[mid] == target

        left = self[0...mid]
        right = self[mid + 1..-1]

        if self[mid] == target
            return left.cleaver_octopus(target)
        else
            result = right.cleaver_octopus(target)
                if result.nil?
                    return nil
                else
                    result + mid + 1
                end
        end
    end
end

