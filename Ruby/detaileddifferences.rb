=begin
 *
 *	Problem:		Detailed Differences
 *	Problem ID:	detaileddifferences
 *	url:				https://open.kattis.com/problems/detaileddifferences
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_cases = gets.chomp.to_i
		
		for this_case in 1..number_cases
			test_A = gets.chomp
			test_A_array = test_A.split("")
			
			test_B = gets.chomp
			test_B_array = test_B.split("")
			
			differences = ""
			test_A_array.each_with_index do |element, index|
				if ( element == test_B_array.fetch(index) )
					differences += "."
				else
					differences += "*"
				end
			end
			
			puts "#{test_A}\n#{test_B}\n#{differences}\n\n"
		end
	end
	
end

solver = Solver.new
solver.solve
