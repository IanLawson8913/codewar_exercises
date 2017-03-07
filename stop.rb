# input: string of one or more words
# output: same string with all words with 5 or more letters reversed

# iterate through each word
# -- if word is less than 5 keep word
# -- if word is more than 5 letters, reverse
# join word return string

def spinWords(str)
  words = str.split
  words.map! { |word| word.length < 5 ? word : word.reverse }
  words.join(' ')
end

p spinWords("Hey fellow warriors") # "Hey wollef sroirraw"

def spinWords(str)
  str.gsub(/(\w{5,})/, &:reverse)
end

p spinWords("Hey fellow warriors")