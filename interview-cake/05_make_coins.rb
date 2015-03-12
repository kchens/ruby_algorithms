# Write a function that, given:

# an amount of money
# a list of coin denominations
# computes the number of ways to make amount of money with coins of the available denominations.

# Example: for amount=4 (4¢) and denominations=[1,2,3] (1¢, 2¢ and 3¢), your program would output 4—the number of ways to make 4¢ with those denominations:

# 1¢, 1¢, 1¢, 1¢
# 1¢, 1¢, 2¢
# 1¢, 3¢
# 2¢, 2¢

def make_coins(amount, coin_list)

  possible_change_list = []
  change = []
  difference = amount


  if difference reaches zero, we push change stack into the possible_change_list
  elsif difference is a negative nubmer, we reset difference, go to next denomination and pop(denomination) from the stack
  end



  possible_change_list.each do {|change| puts change }
end
