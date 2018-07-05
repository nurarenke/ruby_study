

def prefix_is(a)
	#sort by word length
	a = a.sort_by { |i| i.length }
	#word to compare
	prefix = a[0].chars
	a.delete(a[0])
	idx = 0

	
	a.each do |word|
		idx = 0
		word.each_char do |letter|
			if idx < prefix.length
				if letter == prefix[idx]
					idx += 1

				else
					prefix = prefix.slice(0, idx)

				end
			else
				prefix = prefix.slice(0, idx)
			end

		end
	end
	
	print prefix.join("")
end

#a = ['apple', 'ape', 'april']
a = ["geeksforgeeks", "geeks", "geek", "geezer"]
#a = ["apple", "nura"]
prefix_is(a)