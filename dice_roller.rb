def dice_and_rolls(roll)
	num_of_dice = ''
	sides_of_dice = ''
	hit_d = false

	roll.each_char { |char|

		if char == 'd'
			hit_d = true
		end

		if char =~ /\A\d+\z/ ? true : false == true and hit_d == false
			num_of_dice << char
		end

		if char =~ /\A\d+\z/ ? true : false == true and hit_d == true
			sides_of_dice << char
		end 
	}

	
	dice_roller(num_of_dice.to_i, sides_of_dice.to_i)

end

def dice_roller(num_of_dice, sides_of_dice)
	
	rolls = num_of_dice.times.collect{rand(sides_of_dice)}
	
	sum = 0

	rolls.each{|roll| sum += roll}

	print sum
	
end


dice_and_rolls('4d12')