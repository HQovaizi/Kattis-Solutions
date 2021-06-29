=begin
 *
 *	Problem:		Black Friday
 *	Problem ID:	blackfriday
 *	url:				https://open.kattis.com/problems/blackfriday
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_float = input_array.map(&:to_i)
		return input_float
	end

	def solve
		group_size = gets.chomp.to_i
		outcomes = Array.new 6, 0
		
		dice_rolls = input_to_int(gets)
		dice_rolls.each do |roll|
			index = roll - 1
			outcomes[index] += 1
		end
		
		max_outcome = -1
		outcomes.each_with_index do |outcome,index|
			if outcome == 1
				max_outcome = index + 1
			end
		end
		
		if max_outcome == -1
			puts "none"
		else
			index = dice_rolls.index(max_outcome) + 1
			puts index
		end
	end
	
end

solver = Solver.new
solver.solve
