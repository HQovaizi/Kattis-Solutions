=begin
 *
 *	Problem:		Magic Trick
 *	Problem ID:	magictrick
 *	url:				https://open.kattis.com/problems/magictrick
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		cards_array = gets.chomp.split("")
		
		guess = 1
		cards_array.each do |card|
			if (cards_array.count(card) > 1)
				guess = 0
				break
			end
		end
		
		puts guess
	end
	
end

solver = Solver.new
solver.solve
