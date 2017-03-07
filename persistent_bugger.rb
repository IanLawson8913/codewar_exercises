# inputs: positive integer, num
# output: multiplicative persistence

# -- number of times you must multiply the digits in num to get a singlge digit anwer
# -- -- ex: num = 39 ; 3*9=27, 2*7=14, 1*4=4
# -- -- -- returns: 3

# recursive method that performs action on num
# -- split num into single digit integers; mult them together
# -- evaluate for single digit ; if not continue recursion until single digit
# -- -- keep track with counter

def persistence(num)
  counter = 0
  product = num
  while product >= 10
    digits = product.to_s.chars.map(&:to_i)
    product = digits.inject(:*)
    counter += 1
  end
  counter
end

p persistence(39)
p persistence(4)
p persistence(25)
p persistence(999)