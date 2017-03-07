# input: array containing hashes of names
# output: formatted string of names

# "name, name & name"
# "name & name"

# save each name in an array of names
# join names with ", " unless last name. join last with " & "

def list(names_hsh)
  names_arr = []
  names_hsh.each { |hsh| names_arr << hsh[:name] }
  last_name = names_arr.pop
  return last_name.to_s if names_arr.empty?
  "#{names_arr.join(', ')} & #{last_name}"
end

p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
p list([ {name: 'Bart'}, {name: 'Lisa'} ])
p list([ {name: 'Bart'} ])
p list([])
