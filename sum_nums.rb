# input: two integers
# output: return sum of all nums between two nums inclusive

# if nums are same, return that num
# negative nums considered

# make collection of nums between two given nums
# add them together and return value

def get_sum(num1, num2)
  num1, num2 = num2, num1 if num1 > num2
  (num1..num2).to_a.reduce(:+)
end

get_sum(1, 0) == 1   # 1 + 0 = 1
get_sum(1, 2) == 3   # 1 + 2 = 3
get_sum(0, 1) == 1   # 0 + 1 = 1
get_sum(1, 1) == 1   # 1 Since both are same
get_sum(-1, 0) == -1 # -1 + 0 = -1
p get_sum(1, -2) # == 2  # -1 + 0 + 1 + 2 = 2
