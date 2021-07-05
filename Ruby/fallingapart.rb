=begin
 *
 *	Problem:		Falling Apart
 *	Problem ID:	fallingapart
 *	url:				https://open.kattis.com/problems/fallingapart
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_float = input_array.map(&:to_i)
		return input_float
	end
	
	def solve
		number_cases = gets.chomp.to_i
		pieces = input_to_int(gets)
		pieces_sorted = pieces.sort.reverse
		
		alice_total = 0
		bob_total = 0	
		pieces_sorted.each_with_index do |piece, index|
			if (index % 2 == 0)
				alice_total += piece
			else
				bob_total += piece
			end
		end
		puts "#{alice_total} #{bob_total}"
	end
	
end

solver = Solver.new
solver.solve
