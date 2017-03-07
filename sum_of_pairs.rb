# find last most occuring el that could be the second el of pair; save index
# -- max = first num in reverse that is sum or less
# iterate between first num in array and each number up to max num
# -- if num plus the next number is equal to sum
# -- -- save num and nex num
# -- -- -- find index of first num, second num
# -- -- -- -- second num is new max num; save index
# -- if no matches found do the same for next first num with each num
# -- if no matches found throughout entire array
# -- -- return nil

require 'pry'

def sum_pairs(array, sum)
  min_idx = 0
  max_idx = array.length - 1
  idx_pairs = []
  loop do
    current_max = max_idx
    (min_idx + 1).upto(max_idx) do |idx|
      if array[min_idx] + array[idx] == sum
        current_max = idx
        idx_pairs << [min_idx, idx, array[min_idx], array[idx]]
        break
      end
    end
    
    min_idx += 1
    max_idx = current_max
    break if min_idx == max_idx
  end
  
  # idx_pairs.sort_by! { |x, y| y[1] <=> x[1] }
  final = idx_pairs.min_by { |arr| arr[1] }
  
  final != nil ? final[2..3] : final
end

p sum_pairs([11, 3, 7, 5], 10)
#                ^--^      3 + 7 = 10
# # == [3, 7]

p sum_pairs([4, 3, 2, 3, 4],         6)
# # #          ^-----^         4 + 2 = 6, indices: 0, 2 *
# # #             ^-----^      3 + 3 = 6, indices: 1, 3
# # #                ^-----^   2 + 4 = 6, indices: 2, 4
# # #  * entire pair is earlier, and therefore is the correct answer
# # == [4, 2]

p sum_pairs([0, 0, -2, 3], 2)
# # #  there are no pairs of values that can be added to produce 2.
# # == nil

p sum_pairs([10, 5, 2, 3, 7, 5],         10)
# #              ^-----------^   5 + 5 = 10, indices: 1, 5
# #                    ^--^      3 + 7 = 10, indices: 3, 4 *
# #  * entire pair is earlier, and therefore is the correct answer
# == [3, 7]
# Negative numbers and duplicate numbers can and will appear.

# NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. 
# Be sure your code doesn't time out.