=begin
 *
 *	Problem:		Sort Two Numbers
 *	Problem ID:	sorttwonumbers
 *	url:				https://open.kattis.com/problems/sorttwonumbers
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		int_a, int_b = gets.chomp.split(" ").map(&:to_i)
		if (int_a <= int_b)
			puts "#{int_a} #{int_b}"
		else
			puts "#{int_b} #{int_a}"
		end
	end
	
end

solver = Solver.new
solver.solve
