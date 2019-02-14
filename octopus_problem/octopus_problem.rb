#O(n^2)
fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def quadratic_longest_fish(fishes)
    fish = []
    fishes.each_with_index do |fish1,idx1|
        fishes.each_with_index do |fish2,idx2|
            fish << fish2 if fish2.length > fish1.length
        end
    end
    fish[-1]
end

def linear_biggest_fish(fishes)
    large_fish = fishes.first
    fishes.each do |fish|
        if fish.length > large_fish.length
            large_fish = fish
        end
    end
    large_fish
end

def linear_slow_dance(direction,tiles_array)
    tiles_array.each_with_index do |tile,idx|
        return idx if tile == direction
    end
end