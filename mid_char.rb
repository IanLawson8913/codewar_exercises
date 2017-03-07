# input: string
# output: return middle character (string) if even return middle 2 chars

# split string into two halves
# return middle character if odd
# if both halves are same length, return last and first char

# if odd part2 will be longer

def getMiddle(string)
  length = string.length
  part1 = string[0, length/2]
  part2 = string[length/2, length]
  
  if part1.length == part2.length
    part1[-1] + part2[0]
  else
    part2[0]
  end
end

p getMiddle("test") # should return "es"
p getMiddle("testing") # should return "t"
p getMiddle("middle") # should return "dd"
p getMiddle("A") # should return "A"
