# You are given an array strarr of strings and an integer k. Your task is to 
# return the first longest string consisting of k consecutive strings 
# taken in the array.

# input: array of different length strings
# output: longest string out of first k strings

# select first k strings
# sort by string length
# return longest string

def longest_consec(arr, k)
  return '' if k == 0 || k > arr.length
  arr[0, k].sort_by(&:length)[-1]
end

# sort array by string length and delete repeated strings
# select first k strings and join them


def longest_consec(arr, k)
  return '' if k == 0 || k > arr.length
  arr.sort_by(&:length).uniq.reverse[0, k].join
end

def longest_consec(arr, k)
  return '' if k == 0 || k > arr.length
  words = ''
  k.times do |time|
    max_word_length = arr.max_by { |word| word.length }.length
    first_match = arr.find { |word| word.length == max_word_length }
    words << arr.delete(first_match)
  end
  words
end

def longest_consec(arr, k)
  return '' if k == 0 || k > arr.length
  words = ''
  
  lengths = arr.map(&:length)
  max_lengths = lengths.max(k)
  arr.reject do |word|
    max_lengths.include?(word.length)
  end
end

def longest_consec(arr, k)
  return '' if k == 0 || k > arr.length
  start_idx = 0
  combos = []
  while start_idx <= (arr.length - k)
    combos << arr[start_idx, k]
    start_idx += 1
  end
  strings = combos.map(&:join)
  max_length = strings.max_by(&:length).length
  strings.find { |string| string.length == max_length }
end

p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) # "ixoyx3452zzzzzzzzzzzz"
p longest_consec(["theta", "form", "libe", "zas", "theta", "abigail"], 3) 
p longest_consec(["itvayloxrp", "wkppqsztdkmvcuwvereiupccauycnjutlv",
                                "vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 1) 
p longest_consec(["itvayloxrp", "wkppqsztdkmvcuwvereiupccauycnjutlv",
                                "zweqilsfytihvrzlaodfixoyxvyuyvgpck"], 0) 

