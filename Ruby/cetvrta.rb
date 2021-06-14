=begin
 *
 *	Problem:		Cetvrta
 *	Problem ID:	cetvrta
 *	url:				https://open.kattis.com/problems/cetvrta
 *	Solution:		Ruby
 *
=end

class Solver

	def unique_element(array)
		unique = -1
		array.each do |element|
			if (array.count(element) == 1)
				unique = element
				break
			end
		end
		return unique
	end

	def solve
		x1, y1 = gets.chomp().split(" ").map(&:to_i)
		x2, y2 = gets.chomp().split(" ").map(&:to_i)
		x3, y3 = gets.chomp().split(" ").map(&:to_i)
		
		unique_x_vertice = unique_element [x1, x2, x3]
		unique_y_vertice = unique_element [y1, y2, y3]
		
		puts "#{unique_x_vertice} #{unique_y_vertice}"
	end
	
end

solver = Solver.new
solver.solve
