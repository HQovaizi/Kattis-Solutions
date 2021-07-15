=begin
 *
 *	Problem:		Hanging Out on the Terrace
 *	Problem ID:	hangingout
 *	url:				https://open.kattis.com/problems/hangingout
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		limit, cases = gets.chomp.split(" ").map(&:to_i)
		
		current = 0
		prohibited = 0
	
		for this_case in 1..cases
			input = gets.chomp.split(" ")
			action = input[0]
			number = input[1].to_i
			
			if (action == "enter")
				if (number + current <= limit)
					current += number
				else
					prohibited += 1
				end
			elsif (action == "leave")
				current -= number
			end
		end
		
		puts(prohibited)
	end
	
end

solver = Solver.new
solver.solve
