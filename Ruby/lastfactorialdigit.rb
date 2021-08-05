=begin
 *
 *	Problem:		Last Factorial Digit
 *	Problem ID:	lastfactorialdigit
 *	url:				https://open.kattis.com/problems/lastfactorialdigit
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_cases = gets.chomp.to_i
		for this_case in 1..number_cases
			n = gets.chomp.to_i
			factorial = 1
			index = 1
			while (index < n)
				factorial *= (index + 1)
				index += 1
			end
			last_digit = factorial % 10
			puts(last_digit)
		end
	end
	
end

solver = Solver.new
solver.solve
