# first letter to end, add ay

def pig_it(text)
  words = text.split.map do |word|
    if /[^a-z]/i =~ word
      word
    else
      new_word = word + word[0] + 'ay'
      new_word[0] = ''
      new_word
    end
  end
  words.join(' ')
end

p pig_it('Pig latin is cool')

p pig_it('Pig latin is cool !')

def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end