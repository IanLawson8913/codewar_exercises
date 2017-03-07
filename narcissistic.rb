# input: integer
# output: true or false based on rules

# rules: each digit of the num raised to the power of the length of num added together
# -- if equals num ? true : false

# separate number and iterate
# conditional statement for return value

def narcissistic?(num)
  digits = num.to_s.chars.map(&:to_i)
  pwrs = digits.map! { |digit| digit**digits.size }
  pwrs.reduce(:+) == num
end

p narcissistic?(5)
p narcissistic?(153)
