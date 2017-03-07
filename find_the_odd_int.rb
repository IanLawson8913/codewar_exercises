# input: array of integers
# output: integer which appears odd number of times

# iterate through list of unique elements in array
# -- count(unique elements) in array
# -- if cound is odd, return number

def find_it(array)
  uniques = array.uniq
  uniques.each { |uniq| return uniq if array.count(uniq).odd? }
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])