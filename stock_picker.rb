def stock_picker(prices)
  min_price = prices[0]
  min_index = 0
  max_profit = 0
  result = [0, 0]

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
    elsif price - min_price > max_profit
      max_profit = price - min_price
      result = [min_index, index]
    end
  end

  result
end

print stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  # for a profit of $15 - $3 == $12
