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
=end

def sherlock(*args)
	counter = Hash.new(0)

	nums = Array.new(args)

	nums.each {|num| counter[num] += 1}

	counter.each do |name, value|
		

end


sherlock(1, 1, 2, 2)
