=begin
 *
 *	Problem:		Railroad
 *	Problem ID:	railroad2
 *	url:				https://open.kattis.com/problems/railroad2
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		input = gets.chomp.split(" ")
		number_junctions, number_switches = input.map(&:to_i)
		if (number_switches % 2 == 0)
			puts "possible"
		else
			puts "impossible"
		end
	end
	
end

solver = Solver.new
solver.solve
