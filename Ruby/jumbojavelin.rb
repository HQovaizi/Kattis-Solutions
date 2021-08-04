=begin
 *
 *	Problem:		Jumbo Javelin
 *	Problem ID:	jumbojavelin
 *	url:				https://open.kattis.com/problems/jumbojavelin
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_javelins = gets.chomp.to_i
		total = 0
		for length in 1..number_javelins
			total += gets.chomp.to_i
		end
		fusion_loss = number_javelins - 1
		total -= fusion_loss
		puts(total)
	end
	
end

solver = Solver.new
solver.solve
