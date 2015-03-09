

def highest_product_of_three(input_arr)
  largest, second, third = 0, 0, 0

  input_arr.each do |num|
    abs_val = num.abs
    if abs_val > largest
      third = second
      second = largest
      largest = abs_val
    elsif abs_val > second
      third = second
      second = abs_val
    elsif abs_val > third
      third = abs_val
    end
  end
  return (largest * second * third)
end

p highest_product_of_three([1, 7, 3, 4])
p highest_product_of_three([-10,-10,1,3,2])
