def largest_ordered_collection(num_arr)
  largest = []
  temp = []

  num_arr.each_with_index do |first_num, first_idx|
    temp << first_num

    num_arr.each_with_index do |second_num, second_idx|
      next if second_idx <= first_idx
      if second_num >= temp[-1]
        temp << second_num
      end
    end

    largest = temp if largest.length < temp.length
    temp = []
  end
  largest
end


def largest_ordered_collection(num_arr)
  largest = []

  num_arr.each_with_index do |first_num, first_idx|
    temp = []
    temp << first_num
    counter = first_idx + 1

    while (counter < num_arr.length)
      if num_arr[counter] >= temp[-1]
        temp << num_arr[counter]
      end
      counter += 1
    end

    largest = temp if largest.length < temp.length
  end
  largest
end

p largest_ordered_collection([4,5,1,2,3,1,6]) == [1,2,3, 6]
