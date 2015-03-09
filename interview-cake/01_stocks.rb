# input: given an array of stock prices
# output: best profit (buy first, sell later)

# example = [1,2,3,6,1,8,9]
# output:  8

# process:
# set buy_idx, sell_idx, max_profit

def best_profit(arr)
  buy_idx, sell_idx, max_profit = 0, 1, 0

  while sell_idx < arr.length
    temp = arr[sell_idx] - arr[buy_idx]
    if temp > max_profit
      max_profit = temp
      sell_idx += 1
    else
      buy_idx = sell_idx if arr[sell_idx] < arr[buy_idx]
      sell_idx += 1
    end
  end
  return "#{buy_idx}, #{sell_idx}, #{max_profit}"
end

def best_profit(stocks)
  min_price, max_profit = stocks[0], 0

  stocks.each do |current_price|
    min_price   = [min_price, current_price].min
    max_profit  = [max_profit, (current_price - min_price)].max
  end
  return max_profit
end



p best_profit([1,2,3,6,1,8,9])



def best_profit(stocks)
  buy, sell, greatest_profit, temp = stocks[0], stocks[1], 0, 0

  (2..stocks.length-1).each do |index|
    sell = stocks[index]
    temp = sell - buy
    if temp > greatest_profit
      greatest_profit = temp
    elsif sell < buy
      buy = sell
    end
  end
  return greatest_profit
end

p best_profit([1,2,3,6,1,8,9])
