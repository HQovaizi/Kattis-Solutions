=begin
 *
 *	Problem:		Another Candies
 *	Problem ID:	anothercandies
 *	url:				https://open.kattis.com/problems/anothercandies
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		num_cases = gets.chomp.to_i
		gets.chomp # nl
		
		for curr_case in 1..num_cases
			num_children = gets.chomp.to_i
			
			total_candies = 0
			for candies in 1..num_children
				num_candies = gets.chop.to_i
				total_candies += num_candies
			end
			
			distributable = (total_candies % num_children == 0)
			puts (distributable ? "YES" : "NO")

			if (curr_case != num_cases)
				gets.chomp # nl
			end
		end	
	end # solve method
	
end # end Main class

solver = Solver.new
solver.solve