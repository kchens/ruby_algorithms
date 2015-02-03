def linear_search(arr_nums, target_num)
    arr_nums.index(target_num)
end

def linear_search(arr_nums, target_num)
    arr_nums.find_index(target_num)
end

def linear_search(arr_nums, target_num)
    arr_nums.each_index do |index|
        return index if arr_nums[index] == target_num
    end
end

