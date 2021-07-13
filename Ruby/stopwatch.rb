=begin
 *
 *	Problem:		Stopwatch
 *	Problem ID:	stopwatch
 *	url:				https://open.kattis.com/problems/stopwatch
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_presses = gets.chomp.to_i
		result = "still running"
		
		if (number_presses % 2 == 0)
			result = 0
			while (number_presses > 0)
				t1 = gets.chomp.to_i
				t2 = gets.chomp.to_i
				result += t2 - t1
				number_presses -= 2
			end
		end
		
		puts result
	end
	
end

solver = Solver.new
solver.solve
