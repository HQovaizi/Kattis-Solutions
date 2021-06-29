=begin
 *
 *	Problem:		Grass Seed Inc.
 *	Problem ID:	grassseed
 *	url:				https://open.kattis.com/problems/grassseed
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
		cost_per_unit = gets.chomp.to_f
		number_lawns = gets.chomp.to_i
		
		total_area = 0
		for lawn in 1..number_lawns
			width, length = input_to_float(gets)
			area = width * length
			total_area += area
		end
		
		total_cost = total_area * cost_per_unit
		puts total_cost
	end
	
end

solver = Solver.new
solver.solve
