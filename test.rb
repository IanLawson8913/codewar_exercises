def get_count(string)
  string.scan(/[aeiou]/i).length
end

p get_count("abracadabra")
