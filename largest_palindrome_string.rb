def palindromic?(sentence)
  sentence_no_space = sentence.downcase.split(" ").join
  return true if sentence_no_space == sentence_no_space.reverse
  return false
end

# input: string
# output: the largest palindrome word
# process:
# => split the array
# =>

def largest_palindrome?(sentence)
  array_of_words = sentence.split(" ")
  ret = []
  array_of_words.each do |word|
    if palindrome?(word)
      if word.length > ret.length
        ret.pop
        ret << word
      # elsif word.length == ret.length
      #   ret << word
      end
    end
  end
  ret
end

def palindrome(string)
  return true if string == string.reverse
  return false
end
