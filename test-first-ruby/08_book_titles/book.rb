class Book
	def title=(title)
		little_words = ['and','a','an','the','in','of']
		words = title.split(' ')
		for i in 0..words.length-1
			if i == 0
				words[i] = words[i].capitalize
			elsif i > 0 && !little_words.include?(words[i])
				words[i] = words[i].capitalize
			end
		end
		@title = words.join(' ')

	end

	def title
		@title
	end

end