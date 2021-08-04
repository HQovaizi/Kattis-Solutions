=begin
 *
 *	Problem:		Job Expenses
 *	Problem ID:	jobexpenses
 *	url:				https://open.kattis.com/problems/jobexpenses
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
		number_receipts = input_to_int(gets)
		receipts = input_to_int(gets)
		expenses = 0
		receipts.each do |receipt|
			if (receipt < 0)
				expenses += receipt.abs
			end
		end
		puts(expenses)
	end
	
end

solver = Solver.new
solver.solve
