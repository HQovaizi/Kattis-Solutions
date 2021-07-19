=begin
 *
 *	Problem:		Beavergnaw
 *	Problem ID:	beavergnaw
 *	url:				https://open.kattis.com/problems/beavergnaw
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_float(input)
		input_array = input.chomp.split(" ")
		input_float = input_array.map(&:to_f)
		return input_float
	end

	def solve
		outer_diameter, outer_height = input_to_float(gets)
		
		until ( (outer_diameter == 0) and (outer_height ==0) )
			inner_height = (12 * (outer_diameter*((outer_diameter/2)**2) - outer_height/Math::PI) - (outer_diameter**3))/2
			inner_diameter = inner_height ** (1.0 / 3)
			puts inner_diameter.round(9)
			
			outer_diameter, outer_height = input_to_float(gets)
		end
	end
	
end

solver = Solver.new
solver.solve
