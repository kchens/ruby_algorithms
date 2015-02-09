# input:      a string
# output:    string reversed
# process:
#           set a left_idx = 0
#           set right_idx = string.length
#           set temp = nil
#           while left_idx < right_idx
#               set temp to last letter
#               set last letter to first letter
#               set first letter to last letter
#               increment left_idx
#               decrement right_idx
#           end


def reverse_string(string)
  left_idx = 0
  right_idx = string.length - 1
  while left_idx < right_idx
      temp = string[right_idx]
      string[right_idx] = string[left_idx]
      string[left_idx] = temp
      left_idx += 1
      right_idx -= 1
  end
  p string
end

reverse_string("hello")

# parallel assignment
# a = 1, 2
# a => [1, 2]
#
# a, b = 1, 2
# a =>  1, b => 2
#
# first, *rest = 1,2,3,4
# first => 1
# last => [2,3,4]
#
# *from_first, last = 1,2,3,4
# from_first => [1,2,3]
# last => 4

def reverse_string_parallel(string)
  left_idx = 0
  right_idx = string.length - 1
  while left_idx < right_idx
    string[left_idx], string[right_idx] = string[right_idx], string[left_idx]
    left_idx += 1
    right_idx -= 1
  end
  p string
end

reverse_string_parallel("yellow")
