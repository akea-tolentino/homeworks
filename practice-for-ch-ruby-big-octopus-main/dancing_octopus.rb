def slow_dance(direction, array)
    array.each_with_index do |tile, idx|
        return idx if tile == direction
    end
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up"]

#p slow_dance("up", tiles_array)
#p slow_dance("right-down", tiles_array)

tiles_hash = {"up"=> 0, "right-up"=> 1, "right"=> 2, "right-down"=> 3, "down"=> 4, "left-down"=> 5, "left"=> 6, "left-up"=> 7}

def fast_dance(direction, tiles_hash)
    return tiles_hash[direction]
end

p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)