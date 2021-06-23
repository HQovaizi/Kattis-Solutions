=begin
 *
 *	Problem:		Free Food
 *	Problem ID:	freefood
 *	url:				https://open.kattis.com/problems/freefood
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_events = gets.chomp.to_i
		dates = Array.new
		for event in 1..number_events
			start_date, end_date = gets.chomp.split(" ").map(&:to_i)
			for date in start_date..end_date
				dates.push date
			end
		end
		result = dates.uniq.length
		puts result
	end
	
end

solver = Solver.new
solver.solve
