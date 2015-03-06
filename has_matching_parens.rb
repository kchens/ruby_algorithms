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

# puts matches_multiple("(hello)my{name}is[amelia()]") == true
# puts matches_multiple("(hello)my{name}is[amelia()]{") == false

# T = O(n)
# S = O(2) = O(1)

def matching_parens?(setence)
  opening = [ '(', '[', '{' ]
  closing = [ ')', ']', '}' ]
  count = 0
  chars = setence.split('')
  chars.each do |char|
    if opening.include?(char)
      count += 1
    elsif closing.include?(char)
      count -= 1
    end
  end

  count == 0 ? true : false
end

def matching_parens?(string)
  stack = []
  parens = { '(' => ')',
             '[' => ']',
             '{' => '}' }

  string.each_char do |char|
    if parens.keys.include?(char)
      stack << char
    elsif parens[stack[-1]] == char
      stack.pop
    elsif parens.values.include?(char) && stack.empty?
      return false
    end
  end
  return stack.empty?
end

def matching_parens?(string)
  stack = []
  good_pairs = { '()' => true,
             '[]' => true,
             '{}' => true}
  string.each_char do |char|
    if char == "(" || char == "{" || char == "["
      stack << char
    elsif char == ")" || char == "}" || char == "]"
      last_char_in_stack = stack.pop
      pair = last_char_in_stack + char
      if (!good_pairs[pair])
        return false
      end
    else
      next
    end
  end
  return stack.empty?
end

puts matching_parens?("(hello)my{name}is[amelia()]") == true
puts matching_parens?("(hello)my{name}is[amelia()]{") == false
