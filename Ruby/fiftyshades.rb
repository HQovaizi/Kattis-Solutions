=begin
 *
 *	Problem:		Fifty Shades of Pink
 *	Problem ID:	fiftyshades
 *	url:				https://open.kattis.com/problems/fiftyshades
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_packages = gets.chomp.to_i
		attendance = 0
		for this_package in 1..number_packages
			label = gets.chomp
			can_attend = ( label.downcase.include?("pink") || label.downcase.include?("rose") )
			if ( can_attend == true )
				attendance += 1
			end
		end
		
		if ( attendance == 0)
			puts "I must watch Star Wars with my daughter"
		else
			puts attendance
		end
	end
	
end

solver = Solver.new
solver.solve
