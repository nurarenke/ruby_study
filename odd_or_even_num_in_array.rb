
def is_odd(nums)
	if nums[0] % 2 != 0 && nums[-1] % 2 != 0
		true
	end

	if nums[1] % 2 != 0
		true
		
	else
		false
	end
end


def find_single_n(numbers)

	if is_odd(numbers) == true
		#it's an odd list
		numbers.each do |num|
			if num % 2 == 0
				num
			end
		end
	
	else
		#it's an even list
		numbers.each do |num|
			if num % 2 != 0
				num
			end
		end

	end
end

a =[160, 3, 1719, 19, 11, 13, -21]
b = [2, 4, 0, 100, 4, 11, 2602, 36]
c = [2, 4, 5]
find_single_n(c)
