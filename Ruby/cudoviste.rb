=begin
 *
 *	Problem:		Cudoviste
 *	Problem ID:	cudoviste
 *	url:				https://open.kattis.com/problems/cudoviste
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_int = input_array.map(&:to_i)
		return input_int
	end
	
	def can_park(mapping, i, j, k)
		parking_area = mapping[i][j] + mapping[i][j+1] + mapping[i+1][j] + mapping[i+1][j+1]
		if ( parking_area.include?("#") )
			return false
		elsif ( parking_area.count("X") == k )
			return true
		end
	end

	def solve
		rows, columns = input_to_int(gets)
		output = Array.new(5) {0}
		mapping =  Array.new(rows) {Array.new(columns,"")}
		
		# populate mapping
		for i in 0...rows
			line = gets.chomp.split("")
			for j in 0...columns
				mapping[i][j] = line[j]
			end
		end

		# establish total number of parking spaces Mirko can park
		for k in 0...5
			for i in 0...(rows - 1)
				for j in 0...(columns - 1)
					if ( can_park(mapping, i, j, k) )
						output[k] += 1
					end
				end
			end
		end
		puts output
	end
	
end

solver = Solver.new
solver.solve
