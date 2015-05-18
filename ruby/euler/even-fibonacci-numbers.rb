def fibonacci max_value
	fib = [1,2]
	while fib[-1] <= max_value
		fib.push(fib[-1] + fib[-2])
	end
	fib
end

def fibonacci_sum_even max_value
	even_sum = 0
	for number in fibonacci(max_value)
		if number % 2 == 0
			even_sum += number
		end
	end
	even_sum
end

puts fibonacci_sum_even(4000000)
