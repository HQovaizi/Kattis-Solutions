=begin
 *
 *	Problem:		Homework
 *	Problem ID:	heimavinna
 *	url:				https://open.kattis.com/problems/heimavinna
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		problems = gets.chomp.split(";")
		
		total_problems = 0
		problems.each do |problem|
			number_problems = 0
			if problem.include?("-")
				range = problem.split("-")
				number_problems = range[1].to_i - range[0].to_i + 1 # +1 since range inclusive
			else
				number_problems = 1
			end
			total_problems += number_problems
		end
		
		puts(total_problems)
	end
	
end

solver = Solver.new
solver.solve
