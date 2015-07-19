def substrings(input, dictionary)
	num_instances = Hash.new()
	input.downcase!
	dictionary.collect! {|word| word.downcase}
	for word in dictionary
		if input.include? word
			num_instances[word] = input.scan(word).length
		end
	end
	num_instances
end

test_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", test_dictionary)
p substrings("Howdy partner, sit down! How's it going?", test_dictionary)