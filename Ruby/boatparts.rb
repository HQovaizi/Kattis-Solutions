=begin
 *
 *	Problem:		Boat Parts
 *	Problem ID:	boatparts
 *	url:				https://open.kattis.com/problems/boatparts
 *	Solution:		Ruby
 *
=end

require 'set'

class Solver

	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_int = input_array.map(&:to_i)
		return input_int
	end

	def solve
		number_parts, number_days = input_to_int(gets)
		output = "paradox avoided"
		
		list_parts = Array.new
		for day in 1..number_days
			part = gets.chomp
			list_parts.push(part)
			
			set_parts = list_parts.to_set
			
			if ( (output == "paradox avoided") and (set_parts.length == number_parts))
				output = day
			end
		end
		
		puts output
	end
	
end

solver = Solver.new
solver.solve
