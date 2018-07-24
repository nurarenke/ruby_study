
def sum(nums)
	nums.reduce(&:+)
end

def find_single_n(numbers)

	if sum(numbers) % 2 == 0
		#it's an odd list
		numbers.each do |num|
			if num % 2 == 0
				print num
			end
		end
	
	else
		#it's an even list
		numbers.each do |num|
			if num % 2 != 0
				print num
			end
		end

	end
end

find_single_n([160, 3, 1719, 19, 11, 13, -21])