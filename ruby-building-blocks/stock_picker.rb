def stock_picker(stock_prices)
	if stock_prices.index(stock_prices.min) < stock_prices.index(stock_prices.max)
		[stock_prices.index(min),stock_prices.index(max)]
	else
		buy = stock_prices.sort
		sell = stock_prices.sort.reverse
		profits = Hash.new(0)

		buy.each do |low|
			sell.each do |high|
				low_index = stock_prices.index(low)
				high_index = stock_prices.index(high)
				if low_index < high_index && high - low > 0
					profits[[low_index, high_index]] = high - low
				end
			end
		end

		profits = profits.sort_by {|days, profit| profit}.reverse.to_h

		profits.keys.first
	end
end

test_prices = [17,3,6,9,15,8,6,1,10]
p stock_picker(test_prices)