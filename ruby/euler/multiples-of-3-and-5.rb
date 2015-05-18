def sum_multiples first_number, second_number, max_number
	if first_number < second_number
		smaller_number = first_number
		larger_number = second_number
	else
		smaller_number = second_number
		larger_number = first_number
	end

	i = 1
	total_sum = 0

	while i * smaller_number < max_number
		small_multiple = i * smaller_number
		large_multiple = i * larger_number
		if (small_multiple < max_number) && (small_multiple % larger_number != 0)
			total_sum += small_multiple
		end
		if large_multiple < max_number
			total_sum += large_multiple
		end
		i += 1
	end

	total_sum
end

puts sum_multiples(3, 5, 1000)

