=begin
 *
 *	Problem:		Cold-puter Science
 *	Problem ID:	cold
 *	url:				https://open.kattis.com/problems/cold
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_temperatures = gets.chomp.to_i
		temperatures = gets.chomp.split(" ").map(&:to_i)
		
		below_zero = 0
		temperatures.each do |temperature|
			if (temperature < 0)
				below_zero += 1
			end
		end
		puts below_zero
	end
	
end

solver = Solver.new
solver.solve
