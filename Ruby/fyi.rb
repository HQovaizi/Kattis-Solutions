=begin
 *
 *	Problem:		FYI
 *	Problem ID:	fyi
 *	url:				https://open.kattis.com/problems/fyi
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		telephone_number = gets.chomp
		if ( telephone_number[0..2] == "555" )
			puts 1
		else
			puts 0
		end
	end
	
end

solver = Solver.new
solver.solve
