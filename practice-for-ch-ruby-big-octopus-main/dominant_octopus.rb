#O(n log n)
def dominant_octopus(array)
    sorted = merge_sort(array)
    longest = sorted[-1]
end

def merge_sort(array)
    return array if array.length <= 1
    mid = array.length / 2

    left = merge_sort(array[0...mid])
    right = merge_sort(array[mid..-1])

    merge(left, right)
end

def merge(left, right)
    merged = []

    until left.empty? || right.empty?
        if right.first.length < left.first.length
            merged << right.shift
        else
            merged << left.shift
        end
    end

    merged + left + right
end

array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

p dominant_octopus(array)