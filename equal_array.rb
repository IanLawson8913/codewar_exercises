# input: array of numbers 
# -- can be positive, negative, or zero; 
# -- array length is less than 1000 more than 0
# output: return index at which all numbers to the left 
#         and right both add to same number
# -- if no such number is found, return -1

# for each number in array
# add all values with index lower than number
# add all values with index higher than number
# if both values are equal, stop, return index of that number

def find_even_index(array)
  array.length.times do |middle_idx|
    part1 = [0] 
    part2 = [0]
    array.each_with_index do |num, idx|
      part1 << num if idx < middle_idx
      part2 << num if idx > middle_idx
    end
    return middle_idx if part1.reduce(:+) == part2.reduce(:+)
  end
  -1
end

# p find_even_index([1,2,3,4,3,2,1]) # 3
# p find_even_index([1,100,50,-51,1,1]) # 1
# p find_even_index([1,2,3,4,5,6]) # -1
# p find_even_index([20,10,30,10,10,15,35]) # 3

p find_even_index([20, 10, -80, 10, 10, 15, 35]) # 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) # 6
p find_even_index([0, 0, 0, 0, 0]) # 0

# array.each_with_index do |num, idx|
#     part1 = array[0...idx].reduce(:+)
#     part2 = array[idx+1..(array.length-1)].reduce(:+)
#     return idx if part1 == part2
#   end