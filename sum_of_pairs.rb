# Sum of Pairs

# Given a list of integers and a single sum value, return the first 
# two values (parse from the left please) in order of appearance that 
# add up to form the sum.

# return first pair of elements in a given array whos sum == x
# -- two arg: array of integers, sum
# -- first pair: second element with lowest index
# -- -- if second element is equal, pick pair with lowest first element index
# -- -- if no pair is found return nil

# => iterate through array and add element to each element after it
# -- --
# -- if value is equal to sum, save index of both values in new_array 
# -- -- ie: [[0,1], [3, 5]]
# -- repeat for each possible pair
# select index pair with lowest second value
# -- if two second values are equal, lowest first value
# return elements from orig array with those index; nil if none found

def sum_pairs(array, sum)
  pairs = []
  array.each_with_index do |first, idx1|
    array.each_with_index do |second, idx2|
      if first + second == sum && idx1 < idx2
        pairs << [idx1, idx2]
      end
    end
  end
  return nil if pairs.empty?
  reversed_pairs = pairs.map(&:reverse)
  result_pair = reversed_pairs.sort[0].reverse
  [array[result_pair[0]], array[result_pair[1]]]
end

 p sum_pairs([11, 3, 7, 5], 10)
# # #              ^--^      3 + 7 = 10
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