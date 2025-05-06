def stock_picker(array)
  min_price = array[0]
  result = []
  profit = 0
  max_profit = 0
  min_day = 0
  array.each_with_index do |current_price, current_day|
    if current_price < min_price
      min_price = current_price
      min_day = current_day
    else
      profit = current_price - min_price
      if max_profit < profit
        max_profit = profit
        result = [min_day, current_day]
      end
    end
  end
  result
end

stock_picker([17,3,6,9,15,8,6,1,10])