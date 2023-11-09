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

