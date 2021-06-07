=begin
 *
 *	Problem:		Apaxiaaaaaaaaaaaans!
 *	Problem ID:	apaxiaaans
 *	url:				https://open.kattis.com/problems/apaxiaaans
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		name = gets.chomp.split("")
		
		output = name.fetch(0)
		for index in 1...name.size
			prevChar = name.fetch(index - 1)
			char = name.fetch(index,1)
			unless (char == prevChar)
				output += char
			end
		end
		
		puts output
	end # solve method
	
end # end Main class

solver = Solver.new
solver.solve
