=begin
 *
 *	Problem:		Autori
 *	Problem ID:	autori
 *	url:				https://open.kattis.com/problems/autori
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		names = gets.chomp.split("-")
		result = ""
		names.each do |name|
			result += name[0]
		end
		puts result
	end
	
end

solver = Solver.new
solver.solve