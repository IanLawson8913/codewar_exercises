# Bob is preparing to pass IQ test. The most frequent task in this test is to find
# out which one of the given numbers differs from the others. Bob observed that one 
# number usually differs from the others in evenness. Help Bob — to check his 
# answers, he needs a program that among the given numbers finds one that is 
# different in evenness, and return a position of this number.

# ! Keep in mind that your task is to help Bob solve a real IQ test, which 
# means indexes of the elements start from 1 (not 0)

# input: string of numbers seperated by a space
# output: integer representing index of different number + 1

# convert string to collection of digits
# iterate through each element in string and test for evenness
# -- if number is even put in one collection
# -- if number is odd put in another collection
# first collection with more than one element, return digit from other element
# -- this is the different number

def iq_test(string)
  even_idx = []
  odd_idx = []
  all_nums = string.split.map(&:to_i)
  all_nums.each_with_index do |num, idx|
    num.even? ? even_idx << (idx+1) : odd_idx << (idx+1)
    break if even_idx.size > 1 && odd_idx.size > 0 ||
             odd_idx.size > 1 && even_idx.size > 0
  end
  even_idx.size == 1 ? even_idx[0] : odd_idx[0]
end

p iq_test("2 4 7 8 10") 
# => 3 // Third number is odd, while the rest of the numbers are even
p iq_test("1 2 1 1") 
# => 2 // Second number is even, while the rest of the numbers are odd