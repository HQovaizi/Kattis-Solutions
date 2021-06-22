=begin
 *
 *	Problem:		Forced Choice
 *	Problem ID:	forcedchoice
 *	url:				https://open.kattis.com/problems/forcedchoice
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_cards, prediction, number_steps = gets.chomp.split(" ").map(&:to_i)
		for step in 1..number_steps
			choices_input = gets.chomp.split(" ")
			choices_integers = choices_input.map(&:to_i)[1..-1]
			
			if ( choices_integers.include?(prediction) )
				puts "KEEP"
			else
				puts "REMOVE"
			end
		end
	end
	
end

solver = Solver.new
solver.solve
