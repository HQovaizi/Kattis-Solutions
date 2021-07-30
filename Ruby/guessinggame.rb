=begin
 *
 *	Problem:		Guessing Game
 *	Problem ID:	guessinggame
 *	url:				https://open.kattis.com/problems/guessinggame
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		guess = gets.chomp.to_i
		min_guess = 0
		max_guess = 11
				
		while ( guess != 0 )
			response = gets.chomp
			
			if ( response == "right on" )
				if ( (min_guess < guess) and (guess < max_guess) )
					puts "Stan may be honest"
				else
					puts "Stan is dishonest"
				end
				min_guess = 0
				max_guess = 11
			elsif ( response == "too high" )
				max_guess = [guess, max_guess].min
			else
				min_guess = [guess, min_guess].max
			end
			
			guess = gets.chomp.to_i		
		end
	end
	
end

solver = Solver.new
solver.solve
