def anagrams(first, second)
  first = first.downcase.split("")
  second = second.downcase.split("")
  letter_count = {}

  first.each do |let|
    if letter_count[let]
      letter_count[let] += 1
    else
      letter_count[let] = 1
    end
  end

  second.each do |let|
    if letter_count[let]
      letter_count[let] -= 1
    else
      letter_count[let] += 1
    end
  end

  return true if letter_count.values.all? { |count| count == 0 }
  return false
end

p anagrams('cab', 'cab');