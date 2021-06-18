=begin
 *
 *	Problem:		Echo Echo Echo
 *	Problem ID:	echoechoecho
 *	url:				https://open.kattis.com/problems/echoechoecho
 *	Solution:		Ruby
 *
=end

class Solver
	@@NUMBER_REPITIONS = 3
	
	def solve
		input = gets.chomp + " "
		result = input * @@NUMBER_REPITIONS
		puts result
	end
	
end

solver = Solver.new
solver.solve
