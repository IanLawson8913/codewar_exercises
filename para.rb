def valid_parentheses(string)
  count = 0
  string.chars.each do |char|
    return false if count < 0
    count += 1 if char == '('
    count -= 1 if char == ')'
  end
  count.zero? ? true : false
end

p valid_parentheses("  (") # false
p valid_parentheses(")test") # false
p valid_parentheses("") # true
p valid_parentheses("hi())(") # false
p valid_parentheses("hi(hi)()") # true