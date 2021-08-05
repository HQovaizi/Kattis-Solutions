=begin
 *
 *	Problem:		Laptop Sticker
 *	Problem ID:	laptopsticker
 *	url:				https://open.kattis.com/problems/laptopsticker
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_int = input_array.map(&:to_i)
		return input_int
	end

	def solve
		width_comp, height_comp, width_sticker, height_sticker = input_to_int(gets)
		if ( (width_sticker < (width_comp - 1)) and (height_sticker < (height_comp - 1)) )
			puts(1)
		else
			puts(0)
		end
	end
	
end

solver = Solver.new
solver.solve
