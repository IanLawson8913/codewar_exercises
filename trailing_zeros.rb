# create array of numbers 1 through n multiply them together == num

# 

def zeros(n)
  num = (1..n).to_a.reduce(:*)
  num.to_s.match(/0+$/)[0].length
end

p zeros(12) 
# = 2 # 1 * 2 * 3 .. 12 = 479001600 
# that has 2 trailing zeros 4790016(00)