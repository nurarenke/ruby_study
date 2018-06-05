
def decode(word)

	decoded_word = ''

	i = 0

	while i < word.length

		num_to_skip = word[i].to_i
		i += num_to_skip + 1

		decoded_word += word[i]

		i +=1 
			
	end

	puts decoded_word

end

word = "0h1ae2bcy"

decode(word)