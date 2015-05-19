def translate(words)
	vowels = ['a','e','i','o','u']
	words = words.split(' ')
	words.map! do |word|
		if vowels.include?(word[0])
			#begins with vowel
			x = word + 'ay'
		elsif word[0..1] == 'qu'
			x = word[2..-1] + 'quay'
		elsif word[1..2] == 'qu'
			x = word[3..-1] + word[0] + 'quay'
		else
			first_vowel = word.index(/[aeiou]/)
			x = word[first_vowel..-1] + word[0..first_vowel-1] + 'ay'
		end

	end
	words.join(' ')
end