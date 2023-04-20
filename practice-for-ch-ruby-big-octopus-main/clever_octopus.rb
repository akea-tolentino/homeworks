#O(n)
def clever_octopus(array)
    longest = ""
    array.each do |fish|
        longest = fish if fish.length > longest.length
    end
    longest
end

array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
#=> "fiiiissshhhhhh"

p clever_octopus(array)