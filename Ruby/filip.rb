=begin
 *
 *	Problem:		Filip
 *	Problem ID:	filip
 *	url:				https://open.kattis.com/problems/filip
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		input_reversed = gets.chomp.reverse
		int_a, int_b = input_reversed.split(" ").map(&:to_i)
		if ( int_a >= int_b )
			puts int_a
		else
			puts int_b
		end
	end
	
end

solver = Solver.new
solver.solve
