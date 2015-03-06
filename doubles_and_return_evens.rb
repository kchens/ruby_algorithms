def double_and_return_even(num_array)
    num_array.map { |num| num * 2 }.select{|num| num.even?}
end

p double_and_return_even([4,5,8,9]) == [8,10,16,18]
