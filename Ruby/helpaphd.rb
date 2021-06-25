=begin
 *
 *	Problem:		Help a PhD candidate out!
 *	Problem ID:	helpaphd
 *	url:				https://open.kattis.com/problems/helpaphd
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_cases = gets.chomp.to_i
		
		for this_case in 1..number_cases
			input = gets.chomp
			result = "skipped"
			
			if ( input.include?("+") )
				equation = input.split("+")
				result = equation[0].to_i + equation[1].to_i
			end
			
			puts result
		end
		
	end
	
end

solver = Solver.new
solver.solve
