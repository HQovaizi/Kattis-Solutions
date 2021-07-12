=begin
 *
 *	Problem:		The Last Problem
 *	Problem ID:	thelastproblem
 *	url:				https://open.kattis.com/problems/thelastproblem
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		name = gets.chomp()
		puts "Thank you, #{name}, and farewell!"
	end
	
end

solver = Solver.new
solver.solve
