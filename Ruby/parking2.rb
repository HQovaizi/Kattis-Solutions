=begin
 *
 *	Problem:		Parking
 *	Problem ID:	parking2
 *	url:				https://open.kattis.com/problems/parking2
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
		
		number_cases = gets.chomp.to_i
		
		for this_case in 1..number_cases
			number_stores = input_to_int(gets)
			stores = input_to_int(gets)
			
			max_position = stores[0]
			min_position = stores[0]
			
			stores.each do | current_store |
				if (current_store > max_position)
					max_position = current_store
				end
				
				if (current_store < min_position)
					min_position = current_store
				end
			end
			
			result = (max_position - min_position) * 2
			puts(result)
		end
		
	end
	
end

solver = Solver.new
solver.solve
