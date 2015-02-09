def binary_search(array, target_num)

    min_idx = 0
    max_idx = array.length - 1

    found_target_num = false

    while found_target_num == false
        guess_idx = (min_idx + max_idx) / 2
        if array[guess_idx] == target_num
            found_target_num = true
            guess_idx
        elsif target_num > array[guess_idx]
            min_idx = guess_idx + 1
        else
            max_idx = guess_idx - 1
        end
    end
    guess_idx
end

def binary_search(array, target_num)

    min_idx = 0
    max_idx = array.length - 1
    guess_idx = (min_idx + max_idx) / 2

    until array[guess_idx] == target_num
        if target_num > array[guess_idx]
            min_idx = guess_idx + 1
        else
            max_idx = guess_idx - 1
        end
        guess_idx = (min_idx + max_idx) / 2
    end
    return guess_idx
end
