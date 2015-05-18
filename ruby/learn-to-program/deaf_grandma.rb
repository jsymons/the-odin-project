leaving = false
exit_phrase = "BYE"
bye_count = 0

while !leaving
	user_input = gets.chomp
	if user_input == exit_phrase
		bye_count += 1
		if bye_count == 3
			leaving = true
		end
	elsif user_input == user_input.upcase
		bye_count = 0
		puts "NO, NOT SINCE #{1930 + rand(21)}!"
	else
		bye_count = 0
		puts "HUH?! SPEAK UP SONNY!"
	end
end