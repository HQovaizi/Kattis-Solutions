=begin
 *
 *	Problem:		Harshad Numbers
 *	Problem ID:	harshadnumbers
 *	url:				https://open.kattis.com/problems/harshadnumbers
 *	Solution:		Ruby
 *
=end

class Solver
	@@BILLION = 1000000000
	
	def solve
		input = gets.chomp
		n = input.to_i
		
		while ( n <= @@BILLION )
			sum = 0
			
			input_array = input.split("")
			input_array.each do | digit_str |
				sum += digit_str.to_i
			end
			
			if ( (n % sum) == 0 )
				puts(n)
				break
			end
			
			n += 1
			input = n.to_s
		end
	end
	
end

solver = Solver.new
solver.solve
