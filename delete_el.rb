# inputs: array of integers; max number of reapeats as integer
# output: array of integers with repeats more than max removed

# itereate through array of uniqe elements of order
# -- iterate through order and count number of unique elements.
# -- -- if count is greater than max el is not selected

def delete_nth(order, max)
  count = {}
  order.uniq.each do |uniq|
    count[uniq] = 0
  end
  order.map! do |num|
    count[num] += 1
    count[num] <= max ? num : nil
  end
  order.delete(nil)
  order
end

p delete_nth([20,37,20,21], 1)
p delete_nth([1,1,3,3,7,2,2,2,2], 3)

def delete_nth(order, max)
  count = Hash.new(0)
  order.reject { |item| (count += 1) > max
end