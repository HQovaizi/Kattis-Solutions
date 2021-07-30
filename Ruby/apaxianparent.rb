=begin
 *
 *	Problem:		Honour Thy (Apaxian) Parent
 *	Problem ID:	apaxianparent
 *	url:				https://open.kattis.com/problems/apaxianparent
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		name_y, name_p = gets.chomp.split(" ")
		result = ""
		
		if ( name_y[-2..-1] == "ex" )
			result = name_y + name_p
		elsif ( name_y[-1] == "a" )
			result = name_y[0...-1] + "ex" + name_p
		elsif ( name_y[-1] == "e" )
			result = name_y + "x" + name_p
		elsif ( (name_y[-1] == "i") or (name_y[-1] == "o") or (name_y[-1] == "u") )
			result = name_y[0...-1] + "ex" + name_p
		else ( name_y[-2..-1] == "ex" )
			result = name_y + "ex" + name_p
		end
		
		puts result
	end
	
end

solver = Solver.new
solver.solve
