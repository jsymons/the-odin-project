def caesar_cipher(text, offset)
	upper = ('A'..'Z').to_a
	lower = ('a'..'z').to_a

	encrypted = text.chars.map do |char|
		if upper.include?(char)
			upper[(upper.index(char) + offset) % 26]
		elsif lower.include?(char)
			lower[(lower.index(char) + offset) % 26]
		else
			char
		end
	end

	encrypted.join

end

print "Text to encrypt: "
text_to_encrypt = gets.chomp

print "Offset: "
offset = gets.chomp.to_i

puts "Encrypted text: #{caesar_cipher(text_to_encrypt,offset)}"