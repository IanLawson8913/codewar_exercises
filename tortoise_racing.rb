# input: string
# output: string made of ( and )

# rules: if char count > 1 use ) to replace char and all other occurances
# -- else use )

# map to transform str
# -- if letter count > 1 return ) else return (

def duplicate_encode(str)
  str.chars.map { |letter| str.count(letter) > 1 ? ')' : '(' }
end

p duplicate_encode("din")
p duplicate_encode("recede")