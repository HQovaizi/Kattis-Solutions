=begin
 *
 *	Problem:		Datum
 *	Problem ID:	datum
 *	url:				https://open.kattis.com/problems/datum
 *	Solution:		Ruby
 *
=end

class Solver
	@@YEAR = 2009
	@@MONTH_KEY_VALUES = [1, 4, 4, 0, 2, 5, 0, 3, 6, 1, 4, 6]
	@@WEEKDAYS = ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
	
	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_int = input_array.map(&:to_i)
		return input_int
	end
	
	def solve
		day, month = input_to_int(gets)
		key = @@MONTH_KEY_VALUES[ (month - 1) ]
		result = ( (day + key + 17) % 7 )
		day_of_week = @@WEEKDAYS[result]
		puts(day_of_week)
	end
	
end

solver = Solver.new
solver.solve
