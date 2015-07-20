def echo(what_to_echo)
	what_to_echo
end

def shout(what_to_shout)
	what_to_shout.upcase
end

def repeat(what_to_repeat,n=2)
	what_to_repeat += " "
	repeated = (what_to_repeat*n).strip
	repeated
end

def start_of_word(word,n=1)
	word[0..n-1]
end

def first_word(words)
	words.split(' ')[0]
end

def titleize(words)
	little_words = ['and','over','the']
	words = words.split(' ')
	for i in 0..words.length-1
		if i == 0
			words[i] = words[i].capitalize
		elsif i > 0 && !little_words.include?(words[i])
			words[i] = words[i].capitalize
		end
	end

	words.join(' ')
end