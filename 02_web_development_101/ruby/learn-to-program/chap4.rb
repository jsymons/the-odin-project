puts 'Hello there, what is your first name?'
first_name = gets.chomp
puts 'And your last name?'
last_name = gets.chomp
puts 'What\'s your middle name? If you don\'t have one, just hit enter.'
middle_name = gets.chomp
if middle_name.length > 0
	full_name = "#{first_name} #{middle_name} #{last_name}"
else
	full_name = "#{first_name} #{last_name}"
end
puts "Pleased to meet you #{full_name}, what is your favourite number?"
favourite_number = gets.chomp.to_i
puts "You do know that #{favourite_number + 1} is bigger, and therefore clearly better, right?"