
def reverse(string)
  left = 0
  right = string.length-1

  while left < right
    string[left], string[right] = string[right], string[left]
    left += 1
    right -= 1
  end

  return string
end

def reverse(string)
  left = 0
  right = string.length-1

  while left < right
    temp = string[left]
    string[left] = string[right]
    string[right] = temp
    left += 1
    right -= 1
  end

  return string
end

p reverse('jack');