=begin
 *
 *	Problem:		Tetration
 *	Problem ID:	tetration
 *	url:				https://open.kattis.com/problems/tetration
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		real_number = gets.chomp.to_f
		output = real_number ** (1 / real_number)
		puts output
	end
	
end

solver = Solver.new
solver.solve
