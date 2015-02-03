# Towers of Hanoi

# A = [4,3,2,1]
# B = []
# C = []

# input: a number, A, B, C
# output: C has an ordered stack => [1,2,3,4]

# process:
# base case 1: if A is empty, return C.
# base case 2: if A has one number, move from A to C.
# if A has 2 numbers, move 1 to B, then to C.
#    move 2 to B
#    move 1 to back to B, then to A.

num = 3
start = [*1..num].reverse
hold = []
finish = []

def hanoi(start, finish, hold)
    if start[-1] == 1
      finish << start.pop
      p "start: #{start}"
      p "hold: #{hold}"
      p "finish: #{finish}"
    else
      p start, hold, finish
      hanoi(start, hold, finish)
      hanoi(start, finish, hold)
      hanoi(hold, finish, start)
    end
end