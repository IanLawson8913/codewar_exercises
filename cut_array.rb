# input: array and integer x
# output: nested array made up of size elements and remainder sized element

#  loop through array arr.length / x times
#  -- put x number of elements into a holding array and push to new array
#  -- clear holding array
#  push remainder of elements into array

def make_parts(arr, size)
  parted_arr = []
  idx = 0
  until parted_arr.flatten.size == arr.size
    parted_arr << arr[idx, size]
    idx += size
  end
  parted_arr
end

p make_parts([1,2,3], 1) # , [[1],[2],[3]])
p make_parts([1,2,3,4,5], 10) # , [[1,2,3,4,5]])
p make_parts([], 10) # [])
p make_parts([1,2,3,4,5], 2) # [[1,2],[3,4],[5]])
p make_parts([1,2,3,4,5], 3) # [[1,2,3],[4,5]])