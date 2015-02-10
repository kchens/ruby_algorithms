# input: array of numbers
# output: two numbers that form greatest product
# process:
#     sort the array
#     largest_num = array at last index (pop)
#     second_largest = array at second-to-last index (pop)

def greatest_product_nums(num_list)

  num_list = num_list.sort
  largest_num = num_list.pop
  second_largest = num_list.pop

  [largest_num, second_largest]
end

arr = [4,5,7,8,1,2,5,9]

p greatest_product_nums(arr) ==[9, 8]

def greatest_product_nums(num_list)

  largest_num = 0
  second_largest = 0

  num_list.each do |num|
    if num > largest_num
      second_largest = largest_num
      largest_num = num
    elsif num > second_largest
      second_largest = num
    end
  end
  p largest_num, second_largest
end

p greatest_product_nums(arr) == [9, 8]