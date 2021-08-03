=begin
 *
 *	Problem:		Jack-O'-Lantern Juxtaposition
 *	Problem ID:	jackolanternjuxtaposition
 *	url:				https://open.kattis.com/problems/jackolanternjuxtaposition
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_int = input_array.map(&:to_i)
		return input_int
	end

	def solve
		num_eye, num_nose, num_mouth = input_to_int(gets)
		result = num_eye * num_nose * num_mouth
		puts(result)
	end
	
end

solver = Solver.new
solver.solve
