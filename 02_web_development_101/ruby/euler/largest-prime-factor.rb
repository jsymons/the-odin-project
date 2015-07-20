def largest_prime_factor number_to_factor
	primes = []
	for number in (2..number_to_factor)
		is_prime = true
		for prime in primes
			if number % prime == 0
				is_prime = false
				break
			end
		end
		if is_prime && (number_to_factor % number == 0)
			primes.push(number)
		end
	end
	primes[-1]
end

puts largest_prime_factor(13195)