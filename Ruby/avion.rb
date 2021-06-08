=begin
 *
 *	Problem:		Avion
 *	Problem ID:	avion
 *	url:				https://open.kattis.com/problems/avion
 *	Solution:		Ruby
 *
=end

$number_cases = 5

class Solver
	
	def solve		
		blimp = false
		output = ""
		
		for case_number in 1..$number_cases
			current_code = gets.chomp
			if (current_code.include? "FBI")
				blimp = true
				output += case_number.to_s + " "
			end
		end
		
		if (blimp)
			puts output
		else
			puts "HE GOT AWAY!"
		end		
	end
	
end

solver = Solver.new
solver.solve
