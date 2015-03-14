
def print_spiral(matrix)
  matrix_copy = matrix
  until matrix_copy.empty?
    print_arr = matrix_copy.shift
    print_arr.each { |num| print "#{num} "  }
    return if matrix_copy.empty?
    matrix_copy = matrix_copy.transpose.reverse
  end
end

def print_spiral_recursive(matrix)
  matrix_copy = matrix
  return if matrix_copy.empty?

  print_arr = matrix_copy.shift
  print_arr.each { |num| print "#{num} "  }
  matrix_copy = matrix_copy.transpose.reverse

  print_spiral_recursive(matrix_copy)
end


matrix = [[11, 12, 13, 14, 15],
[21, 22, 23, 24, 25],
[31, 32, 33, 34, 35],
[41, 42, 43, 44, 45]]

# puts print_spiral(matrix)
p "-" * 50
puts print_spiral_recursive(matrix)