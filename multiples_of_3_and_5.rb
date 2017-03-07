# If we list all the natural numbers below 10 that are multiples 
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the 
# multiples of 3 or 5 below the number passed in.

# For all numbers between 1 and num excluding num
# -- create list of numbers that divide by 3 or 5 evenly
# Add nums together

def solution(num)
  (1...num).to_a.select { |x| x % 3 == 0 || x % 5 == 0 }.reduce(:+)
end

p solution(10) 
# [3, 5, 6, 9] sum == 23
p solution(26)