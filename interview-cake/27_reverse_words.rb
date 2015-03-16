
def reverse_words(string)
  # string.reverse!
  string = reverse_characters(string);
  word_start = 0

  for idx in (0..string.length-1)

    if string[idx] == " " || idx == string.length - 1
      word_end = idx - 1
      word = string[word_start..word_end]

      string[word_start..word_end] = reverse_characters(word)

      word_start = idx + 1
    end

  end
  return string
end

def reverse_characters(word)
  left = 0
  right = word.length-1

  while left < right
    word[left], word[right] = word[right], word[left]
    left += 1
    right -= 1
  end

  return word
end

message = 'find you will pain only go you recordings security the into if'

p reverse_words(message)
# p reverse_characters(message)