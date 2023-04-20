#O(n^2)
def sluggish_octopus(array)
    longest = ""
    array.each_with_index do |word1, idx1|
        array.each_with_index do |word2, idx2|
            while idx2 > idx1
                longest = word1 if word1.length > word2.length
            end
        end
    end
    longest
end

array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh'] # => 'fiiiissshhhhhh'

p sluggish_octopus(array)