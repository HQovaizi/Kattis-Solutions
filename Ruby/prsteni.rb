=begin
 *
 *	Problem:		Prsteni
 *	Problem ID:	prsteni
 *	url:				https://open.kattis.com/problems/prsteni
 *	Solution:		Ruby
 *
=end

require_relative 'hq_lib'

class Solver
include HQ_Lib

	def solve
		number_rings = input_to_int(gets)
		radii = input_to_int(gets)
		
		first_radius = radii.first
		all_but_first_radii = radii.drop(1)
		
		all_but_first_radii.each do | current_radius |
			radii_gcd = first_radius.gcd(current_radius)
			
			numerator = first_radius / radii_gcd
			denominator = current_radius / radii_gcd
			
			turning_ratio = "#{numerator}/#{denominator}"
			puts(turning_ratio)
		end
	end
	
end

solver = Solver.new
solver.solve
