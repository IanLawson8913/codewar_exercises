# input: string; 0 or more chars; may or may not end with number
# output: same string but altered

# rules: 
# if string ends in a number, increment by 1; 
# => 'cat001' -> 'cat002'; 'cat2' -> 'cat3'
# if string does not end in number; append '1' to end

# check last char for being integer
# -- if it is, transform it
# -- if it's not, add append '1' to string
# what happens when checking empty string?  ''[-1] returns nil

def pincrement_string(str)
  chars = str.chars
  last = chars[-1]
  if last == last.to_i.to_s
    last = (last.to_i + 1).to_s
  end
  chars
end

p pincrement_string("foo") # "foo1")
p pincrement_string("foobar001") # "foobar002")
p pincrement_string("foobar1") # "foobar2")
p pincrement_string("foobar00") # "foobar01")
p pincrement_string("foobar99") # "foobar100")
p pincrement_string("") # "1")