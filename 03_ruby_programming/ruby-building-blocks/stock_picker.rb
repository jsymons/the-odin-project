def stock_picker(stock_prices)
	buy_day = 0
	sell_day = 0
	profit = 0
		
	for x in 0...stock_prices.length
		for y in 0...stock_prices.length
			if x < y && stock_prices[y] - stock_prices[x] > profit
				buy_day, sell_day, profit = x, y, stock_prices[y] - stock_prices[x]
			end
		end
	end

	[buy_day, sell_day]
end

test_prices = [17,3,6,9,15,8,6,1,10]
p stock_picker(test_prices)