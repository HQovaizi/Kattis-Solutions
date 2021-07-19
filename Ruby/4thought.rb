=begin
 *
 *	Problem:		4 thought
 *	Problem ID:	4thought
 *	url:				https://open.kattis.com/problems/4thought
 *	Solution:		Ruby
 *
=end

class Solver

	def find_solution(target)
		operators = ["*", "/", "+", "-"]
		output = "no solution"

		operators.each do | operator_a |
			operators.each do | operator_b |
				operators.each do | operator_c |
				
					expression = "4 #{operator_a} 4 #{operator_b} 4 #{operator_c} 4"
					result = eval("#{expression}")					
					
					if (result == target)
						equation = "4 #{operator_a} 4 #{operator_b} 4 #{operator_c} 4 = #{result}"
						output = equation
						break
					end
					
				end
			end
		end
		
		return output
	end

	def solve
		number_cases = gets.chomp.to_i
		for this_case in 1..number_cases
			target = gets.chomp.to_i
			output = find_solution(target)
			puts output
		end
	end
	
end

solver = Solver.new
solver.solve
