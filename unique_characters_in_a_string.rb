=begin
Unique Characters in a string from cracking the coding interview, problem 1.1
Implement an algorithm to determine if a string has all unique characters. What if
you cannot use additional data structures? To run rubydoctest, just type "rubydoctest".
=end
# >> unique_char("abcdef")
# => true
# >> unique_char("burger")
# => false

def unique_char(s)
	#sort characters
	arr = s.chars.to_a.sort

	last_char = nil #previous value

	arr.each_with_index do |value, idx|
		if last_char == arr[idx]
			false
		else
			last_char = value
		end
	end

	true
end

