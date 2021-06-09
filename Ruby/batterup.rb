=begin
 *
 *	Problem:		Batter Up
 *	Problem ID:	batterup
 *	url:				https://open.kattis.com/problems/batterup
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		num_samples = gets.chomp.to_i
		
		line = gets.chomp
		samples = line.split(" ").map(&:to_i)

		total_at_bat = num_at_bat = 0
		samples.each do |at_bat|
			if (at_bat >= 0)
				total_at_bat += at_bat
				num_at_bat += 1
			end
		end
		
		result = total_at_bat.to_f / num_at_bat
		puts  result
	end
	
end

solver = Solver.new
solver.solve
