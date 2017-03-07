# input: string of only letters upper or lower
# output: string made up of upper char followed by index number of same letter in lower
# dashes between

# first letter upper cased
# loop through remaining letters and transform them:
# -- "-" + "uppercased letter" + "lowercased letter*idx"
# return new string

def accum(str)
  arr = str.chars.map.with_index do |letter, idx|
    idx > 0 ? "-" + letter.upcase + (letter.downcase*idx) : letter.upcase
  end
  arr.join
end

p accum("abcd")    # "A-Bb-Ccc-Dddd"
p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt")    # "C-Ww-Aaa-Tttt"