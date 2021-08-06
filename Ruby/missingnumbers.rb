=begin
 *
 *	Problem:		Missing Numbers
 *	Problem ID:	missingnumbers
 *	url:				https://open.kattis.com/problems/missingnumbers
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		numbers = gets.chomp.to_i
		missing = ""
		count = 1
		
		for number in 1..numbers
			recited = gets.chomp.to_i
			if (count != recited)
				while (count < recited)
					missing += count.to_s + "\n"
					count += 1
				end
			end
			count += 1
		end
		
		if (missing == "")
			puts "good job"
		else
			puts missing
		end
	end
	
end

solver = Solver.new
solver.solve
