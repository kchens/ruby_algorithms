
def double_even_nums(nums_array)
    nums_array.select { |num| num.even? }.map { |num| num*2 }
end

p double_even_nums([4,5,8,9]) == [8, 16]
