=begin
 *
 *	Problem:		Electrical Outlets
 *	Problem ID:	electricaloutlets
 *	url:				https://open.kattis.com/problems/electricaloutlets
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_cases = gets.chomp.to_i
		for this_case in 1..number_cases
			max_powered = 0
			
			test_input = gets.chomp.split(" ").map(&:to_i)
			number_strips = test_input[0]
			
			for strip_number in 1..number_strips
				number_outlets = test_input.fetch(strip_number)
				max_powered += number_outlets
			end
			
			occupied_outlets = number_strips  - 1
			max_powered -= occupied_outlets
			puts max_powered
		end
	end
	
end

solver = Solver.new
solver.solve
