require 'pry'

# input: string; string
# output: true or false

# if str1 contains all the characters from string 2; true : false

# only lowercase letters, no punctuation or digits
# consider performance

def scramble(str1, str2)
  found_letters = ''
  str2.chars.each do |letter|
    next unless str1.include?(letter)
    str1.sub!(/#{letter}/, '')
    found_letters << letter
  end
  found_letters == str2
end

# p scramble('rkqodlw', 'world')
# p scramble('cedewaraaossoqqyt', 'codewars')
# p scramble('katas', 'steak')
# p scramble('scriptjava', 'javascript')
# p scramble('scriptingjava', 'javascript')

# p scramble('scriptjavx', 'javascript')
p scramble('jascripts', 'jaascript')

def scramble(s1,s2)
  s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
end