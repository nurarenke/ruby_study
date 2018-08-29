=begin
	Sherlock has to find suspect on his latest case. He will use your method, dear Watson. The suspect in this case is a number which is most unique in given set, e.g.:

has least (minimum) occurences in set
and no other number has the same occurences count
Write method which helps Sherlock to find suspect from given set of numbers. If no suspect is found the method should return nil.

psudocode
	loop through the numbers to create a dictionary counter
	everytime you see a number you add to the value
	1:2, 2:2 {2} nil
	1:1, 2:1, 3:2, 4:2 {1, 2} nil
	1:2, 2:3 {2, 3} 1
	loop through the values and clear the duplicates
	return what you have left or nil 


	1:2, 2:3, 3:1, 4:3
	key= 3
	value= 1
	seen= {2, 3}
	num_to_return=
	smallest_num = 1
=end

require 'set'

def find_suspect(*args)
	counter = Hash.new(0)

	nums = Array.new(args)

	least_occurance = 999999999
	num_to_return = nil


	nums.each {|num| 
		counter[num] += 1
	}

	occurances = Hash.new(0)

	counter.each {|key, value|
		if value <= least_occurance
			least_occurance = value 
			num_to_return = key
		end
		occurances[value]+=1
    }

	if occurances[least_occurance] > 1
		return nil
	else
		return num_to_return
	end	
end

puts find_suspect(1, 2, 3, 4, 2, 2, 1, 4, 4) # => 3
puts find_suspect(1, 1, 2, 2) # => nil
puts find_suspect(1, 1, 2, 2, 2) # => 1
puts find_suspect(1, 2, 3, 4, 4, 3) # => nil
