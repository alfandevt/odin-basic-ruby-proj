def stock_picker(stocks)
  min_price = stocks[0]
  min_price_day = 0
  max_profit = 0
  buy_day = 0
  sell_day = 0

  stocks.each_with_index do |price,i|
    if price < min_price
      min_price = price
      min_price_day = i
    end
    profit = price - min_price
    if profit > max_profit
      max_profit = profit
      buy_day = min_price_day
      sell_day = i
    end
  end

  [buy_day, sell_day]
end

pp stock_picker([17,3,6,9,15,8,6,1,10])
