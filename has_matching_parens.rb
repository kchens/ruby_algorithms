# => input: string
# => output: true or false

def has_matching_parens(string)
  parens_count = { '('=> 0, ')' => 0 }
  string.split('').each do |char|
    parens_count[char] += 1 if parens_count[char] != nil
  end

  parens_count.values.uniq.length == 1
end

def matches_multiple(string)
  parens_count = { '('=> 0, ')' => 0 }
  square_count = { '['=> 0, ']' => 0 }
  curly_count = { '{'=> 0, '}' => 0 }
  string.split('').each do |char|
    parens_count[char] += 1 if parens_count[char] != nil
    square_count[char] += 1 if square_count[char] != nil
    curly_count[char] += 1 if curly_count[char] != nil
  end

  parens_ret = parens_count.values.uniq.length == 1
  square_ret = parens_count.values.uniq.length == 1
  curly_ret = parens_count.values.uniq.length == 1

  parens_ret == true and square_ret == true and curly_ret == true
end

puts matches_multiple("(hello)my{name}is[amelia()]") == true
puts matches_multiple("(hello)my{name}is[amelia()]{") == false

# T = O(n)
# S = O(2) = O(1)