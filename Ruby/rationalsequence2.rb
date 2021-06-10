=begin
 *
 *	Problem:		A Rational Sequence 2
 *	Problem ID:	rationalsequence2
 *	url:				https://open.kattis.com/problems/rationalsequence2
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		num_cases = gets.chomp.to_i
		for case_num in 1..num_cases
			case_data = gets.chomp.split(" ")
			label = case_data.fetch(1).split("/")
			numerator = label.fetch(0).to_i
			denominator = label.fetch(1).to_i
			result = calc_n(numerator, denominator)
			puts "#{case_num} #{result}"
		end
	end # end solve method
	
	def calc_n(numerator, denominator)
		if (numerator == denominator)
			return 1
		elsif (numerator > denominator)
			return 2 * calc_n(numerator - denominator, denominator) + 1
		elsif (numerator < denominator)
			return 2 * calc_n(numerator, denominator - numerator)
		end
	end
	
end

solver = Solver.new
solver.solve