def triple_even_sort(nums_array)
    nums_array.map { |num| num * 3 }.select { |num| num.even? }.sort.reverse
end

p triple_even_sort([4,5,8,9]) == [ 24,12]
