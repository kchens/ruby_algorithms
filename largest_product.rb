# input: one array of numbers
# output: largest_product
# process:
#   max_product = nil
#   sort the first array
#   biggest_num = array.pop
#   second_num = array.pop


def largest_product(num_list)
    num_list.sort!
    biggest_num = num_list.pop
    second_num = num_list.pop

    max_product = biggest_num * second_num
end

largest_product([4,5,7,1,8,4,2])