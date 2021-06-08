=begin
 *
 *	Problem:		A Real Challenge
 *	Problem ID:	areal
 *	url:				https://open.kattis.com/problems/areal
 *	Solution:		Ruby
 *
=end

class Solver
	def solve
		area = gets.chomp.to_i
		total_length = (Math.sqrt(area) * 4)
		puts total_length
	end
end

solver = Solver.new
solver.solve
