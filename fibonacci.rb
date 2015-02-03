#input: a number (as an index)
#output:  find the fibonacci number at that index
#process:
# 0, 1, 1, 2, 3, 5, 8, 13

# 7:  13 = 8 + 5  fib(7) = 13 = fib(6) + fib(5)
# 6:  8 = 5 + 3   fib(6) = 8 = fib(4) + fib(3)
# 5:  5 = 3 + 2   fib(5) = 4 = fib(3) + fib(2)
# 4:  3 = 2 + 1   fib(4) = 3 = fib(2) + fib(1)
# 3:  2 = 1 + 1   fib(3) = 2 = fib(1) + fib(0)
# 2:  1 = 1 + 0   fib(2) = 1 = fib(0)
# 1:  13          fib(1) = 1
# 0:  0           fib(0) = 0 = 0


def fib(num)
  return num if num <= 1
  fib(num-1) + fib(num-2)
end

puts fibonacci(0)  === 0
puts fibonacci(1)  === 1
puts fibonacci(2)  === 1
puts fibonacci(6)  === 8
puts fibonacci(10) === 55
puts fibonacci(16) === 987