=begin
 *
 *	Problem:		Add Two Numbers
 *	Problem ID:	addtwonumbers
 *	url:				https://open.kattis.com/problems/addtwonumbers
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		int_a, int_b = gets.chomp.split(" ").map(&:to_i)
		sum = int_a + int_b
		puts sum
	end
	
end

solver = Solver.new
solver.solve
