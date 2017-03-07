# input: array of 10 integers 0-9
# output: formated phone number

# 

def createPhoneNumber(numbers)
  puts "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
end

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"

def createPhoneNumber(numbers)
  numbers.join('').gsub /(\d{3})(\d{3})(\d{3})/, '(\1) \2-\3'
end