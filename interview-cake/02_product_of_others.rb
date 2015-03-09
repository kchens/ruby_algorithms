# input:   [1, 7, 3, 4]
# output:  [84, 12, 28, 21]
# process: [7*3*4, 1*3*4, 1*7*4, 1*7*3]
# => make a copy of input_array, other_products array
# loop through input_array and keep track of indices
#   access copy and delete_at the current_index
#   reduce the rest of the copy into a product (by mult)
#   push the product into other_products array
# end

def get_other_products(nums)
  nums_copy = nums.dup
  other_products = Array.new(nums.length)

  nums.each_with_index do | num, curr_idx |
    nums_copy.delete_at(curr_idx)
    other_products[curr_idx] = nums_copy.reduce(:*)
    nums_copy = nums.dup
  end
  return other_products
end

def get_other_products(input_arr)
  other_products = Array.new(input_arr.length)
  product = 1
  i = 0

  while i < input_arr.length
    other_products[i] = product
    product *= input_arr[i]
    i += 1
  end
  p other_products
  product = 1
  i = input_arr.length - 1
  while i >= 0
    other_products[i] *= product
    product *= input_arr[i]
    i -= 1
  end
  other_products
end

def get_other_products(input_arr)
  other_products = Array.new(input_arr.length)
  product = 1

  input_arr.each_with_index do |num, curr_idx|
    other_products[curr_idx] = product
    product *= input_arr[curr_idx]
  end

  product = 1

  (input_arr.length - 1).downto(0).each do |idx|
    other_products[idx] *= product
    product *= input_arr[idx]
  end

  other_products
end

get_other_products([1, 7, 3, 4])
