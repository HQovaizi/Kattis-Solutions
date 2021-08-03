=begin
 *
 *	Problem:		Hangman
 *	Problem ID:	hangman
 *	url:				https://open.kattis.com/problems/hangman
 *	Solution:		Ruby
 *
=end

require 'set'

class Solver

	def solve
		word = gets.chomp
		guesses = gets.chomp
		
		word_set = word.split("").to_set
		
		result = "LOSE"
		correct = 0
		incorrect = 0
		
		guesses.split("").each do | guess |
			if ( word_set.include?(guess) )
				correct += 1
			else
				incorrect += 1
			end
				
			if ( correct == word_set.length )
				result = "WIN"
				break
			elsif ( incorrect == 10 )
				break
			end
			
		end
		
		puts (result)
	end
	
end

solver = Solver.new
solver.solve
