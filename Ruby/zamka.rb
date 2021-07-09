=begin
 *
 *	Problem:		Zamka
 *	Problem ID:	zamka
 *	url:				https://open.kattis.com/problems/zamka
 *	Solution:		Ruby
 *
=end

class Solver

	def sum_digits(number)
		number_string = number.to_s
		sum = 0
		number_string.split('').each do |digit_string|
			sum += digit_string.to_i
		end
		return sum
	end

	def solve
		lower_bound = gets.chomp.to_i
		upper_bound = gets.chomp.to_i
		target_sum = gets.chomp.to_i
		
		minimal_integer = -1
		maximal_integer = -1
		for number in lower_bound..upper_bound
			sum = sum_digits(number)
			if ( (sum == target_sum) and (minimal_integer == -1) )
				minimal_integer = number
				maximal_integer = number
			elsif (sum == target_sum)
				maximal_integer = number
			end
		end
		
		puts "#{minimal_integer}\n#{maximal_integer}"
	end
	
end

solver = Solver.new
solver.solve
