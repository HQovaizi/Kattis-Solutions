=begin
 *
 *	Problem:		Soda Slurper
 *	Problem ID:	sodaslurper
 *	url:				https://open.kattis.com/problems/sodaslurper
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_int = input_array.map(&:to_i)
		return input_int
	end
	
	def solve
		start, found, required = input_to_int(gets)
		number_bottles = start + found
		
		number_sodas = 0
		while ( (number_bottles - required) >= 0 )
			number_bottles -= required
			number_bottles += 1
			number_sodas += 1
		end
		
		puts number_sodas
	end
	
end

solver = Solver.new
solver.solve
