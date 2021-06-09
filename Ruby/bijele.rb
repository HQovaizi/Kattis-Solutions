=begin
 *
 *	Problem:		Bijele
 *	Problem ID:	bijele
 *	url:				https://open.kattis.com/problems/bijele
 *	Solution:		Ruby
 *
=end

$correct_amounts = [1, 1, 2, 2, 2, 8]

class Solver

	def solve
		line = gets.chomp
		piece_amounts= line.split(" ").map(&:to_i)

		result = ""
		$correct_amounts.each_with_index do |amount, index|
			difference = amount - piece_amounts[index]
			result += difference.to_s + " "
		end		
		
		puts result
	end
	
end

solver = Solver.new
solver.solve