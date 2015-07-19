def stock_picker(stock_prices)
	buy_day = 0
	sell_day = 0
	profit = 0
	days = 0..stock_prices.length - 1
		
	for x in days
		for y in days
			if x < y && stock_prices[y] - stock_prices[x] > profit
				buy_day, sell_day, profit = x, y, stock_prices[y] - stock_prices[x]
			end
		end
	end

	[buy_day, sell_day]
end

test_prices = [17,3,6,9,15,8,6,1,10]
p stock_picker(test_prices)