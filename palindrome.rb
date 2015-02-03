def palindrome(string)
    string_arr = string.split('')
    return true if string.length == 1 || string.length == 0
    return false if string_arr[0] != string_arr[-1]
      string_arr.pop      #take out last element
      string_arr.shift    #take out first element
      string = string_arr.join()
      palindrome(string)
end

def palindrome(string)
  return true if string == string.reverse
  return false
end

palindrome("rotor")

# T = O(n), because accessing two elements for each check
# S = O(1) because it returns true or false..?