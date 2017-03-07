# input: two arrays
# output: true or false based on:
# -- does array2 contain only elements that are the squares of array1 elements?

# edge cases: empty arrays excepted; if a or b is nil return false

# create array of elements from array1 squared
# squares unique items == array2 unique items ?

def comp(array1, array2)
  return false if (array1+array2).any? {|x| x == nil }
  array1.delete(nil)
  squares = array1.map { |num| num*num }
  squares.uniq.sort == array2.uniq.sort
end

p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
p comp( [121, nil, 19, 161, 19, 144, 19, 11], 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
        