=begin
 *
 *	Problem:		Reverse
 *	Problem ID:	ofugsnuid
 *	url:				https://open.kattis.com/problems/ofugsnuid
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_integers = gets.chomp.to_i
		integer_array = Array.new
		
		for integer in 1..number_integers
			integer_array.push(gets.chomp.to_i)
		end
		
		puts integer_array.reverse
	end
	
end

solver = Solver.new
solver.solve
