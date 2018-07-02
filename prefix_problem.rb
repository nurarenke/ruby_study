

def prefix_is(a)
	#sort in place
	a.sort!
	#word to compare
	word_to_compare = a[0].chars
	a.delete(word_to_compare)
	idx = 0
	prefix = String.new

	

	a.each do |word|
		word.each_char do |letter|
			if letter == word_to_compare[idx] && idx < word_to_compare.length
				prefix << letter
				idx += 1
				print idx
			end
		end
	end
	
	puts prefix
end

a = ['apple', 'ape', 'april']
prefix_is(a)