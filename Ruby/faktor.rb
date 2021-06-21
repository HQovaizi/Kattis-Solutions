=begin
 *
 *	Problem:		Faktor
 *	Problem ID:	faktor
 *	url:				https://open.kattis.com/problems/faktor
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		int_a, int_b = gets.chomp.split(" ").map(&:to_i)
		result = ( int_a * (int_b - 1) + 1)
		puts result
	end
	
end

solver = Solver.new
solver.solve
