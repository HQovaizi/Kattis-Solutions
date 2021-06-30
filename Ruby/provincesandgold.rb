=begin
 *
 *	Problem:		Provinces and Gold
 *	Problem ID:	provincesandgold
 *	url:				https://open.kattis.com/problems/provincesandgold
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		input = gets.chomp.split(" ")
		golds, silvers, coppers = input.map(&:to_i)
		
		buying_power = (3 * golds) + (2 * silvers) + (coppers)
		
		result = ""
		
		if (buying_power >= 8)
			result += "Province or "
		elsif (buying_power >= 5)
			result += "Duchy or "
		elsif (buying_power >= 2)
			result += "Estate or "
		end
		
		if (buying_power >= 6)
			result += "Gold"
		elsif (buying_power >= 3)
			result += "Silver"
		elsif (buying_power >= 0)
			result += "Copper"
		end
		
		puts result
	end
	
end

solver = Solver.new
solver.solve
