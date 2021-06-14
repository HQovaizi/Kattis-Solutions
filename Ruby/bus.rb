=begin
 *
 *	Problem:		Bus
 *	Problem ID:	bus
 *	url:				https://open.kattis.com/problems/bus
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_cases = gets.chomp.to_i
		for case_number in 1..number_cases
			number_stops = gets.chomp.to_i
			result = 0
			for stop in 1..number_stops
				result = (result * 2) + 1
			end
			puts result
		end
	end
	
end

solver = Solver.new
solver.solve
