=begin
 *
 *	Problem:		Chanukah
 *	Problem ID:	chanukah
 *	url:				https://open.kattis.com/problems/chanukah
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		num_cases = gets.chomp.to_i
		for each_case in 1..num_cases
			case_number, holidays = gets.chomp.split(" ").map(&:to_i)
			result = holidays + ( ( holidays * (holidays + 1) ) / 2 )
			puts "#{case_number} #{result}"
		end
	end
	
end

solver = Solver.new
solver.solve
