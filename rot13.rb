# input: string of characters
# output: string of characters translated using ROT13

# Rot13 : n-z + a-m

# create collections of regular char and rot13 equivalents hash?
# replace each occurance of letter with it's equal

ROT_CHARS =  ('n'..'z').to_a + ('a'..'m').to_a +
             ('N'..'Z').to_a + ('A'..'M').to_a
NORM_CHARS = ('a'..'z').to_a + ('A'..'Z').to_a
TRANS = ROT_CHARS.zip(NORM_CHARS).to_h

def rot13(message)
  translation = message.chars.map do |char|
    NORM_CHARS.include?(char) ? TRANS[char] : char
  end
  translation.join
end

p rot13("EBG13 rknzcyr.") # "ROT13 example."

def rot13(message)
  p message.tr('a-zA-Z', 'n-za-mN-ZA-M')
end
