def power(num, n)
    answer = 1
    array_with_five = Array.new(n, num)
    array_with_five.each do |element|
        answer *= element
    end
    answer
end

def power(num, n)
    answer = 1
    array_with_five = Array.new(n, num)
    array_with_five.each do |element|
        answer *= element
    end
    answer
end

# 5 * (5 * (5 * (5^0))
# base case 1:  the first num equals the last num
# base case 2:
# the operation that's being repeated:  5^something
# 5^1 * 5^(n-1)
# 5^(n-1) * 5^(n-2)
# ..
# 5^(n-something) == num

def power(num, n)
    if n > 0
        num *= power(num, n-1)
    else
        1
    end
end

def power(num, n)
  n > 0 ? num *= power(num, n-1) : 1
end

power(5,3) # => 125

# T = O(n), where n is the power
# S = O(1)