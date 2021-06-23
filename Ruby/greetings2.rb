=begin
 *
 *	Problem:		Greetings!
 *	Problem ID:	greetings2
 *	url:				https://open.kattis.com/problems/greetings2
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		greeting = gets.chomp
		result = "h" + (greeting[1..-2] * 2) + "y"
		puts result
	end
	
end

solver = Solver.new
solver.solve
