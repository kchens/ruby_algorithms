# Solve in O(n)

def two_sum(num_arr,target)
  exists = {}

  num_arr.each_with_index do |num, index|
    exists[num] = index
  end

  num_arr.each do |num|
    return true if exists[ "#{target - num}"]
  end
  return false
end

two_sum([1,2,3], 4)
