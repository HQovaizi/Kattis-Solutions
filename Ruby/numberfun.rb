=begin
 *
 *	Problem:		Number Fun
 *	Problem ID:	numberfun
 *	url:				https://open.kattis.com/problems/numberfun
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_float(input)
		input_array = input.chomp.split(" ")
		input_float = input_array.map(&:to_f)
		return input_float
	end
	
	def solve
		number_cases = gets.chomp.to_i
		for this_case in 1..number_cases
			a, b, c = input_to_float(gets)
			
			if (a + b == c)
				puts "Possible"
			elsif (a * b == c)
				puts "Possible"	
			elsif (a - b == c)
				puts "Possible"
			elsif (b - a == c)
				puts "Possible"
			elsif ( (a / b == c) and (a % b == 0) )
				puts "Possible"
			elsif ( (b / a == c) and (b % a == 0) )
				puts "Possible"
			else
				puts "Impossible"
			end
		end
		
	end
	
end

solver = Solver.new
solver.solve
