=begin
 *
 *	Problem:		Triple Texting
 *	Problem ID:	tripletexting
 *	url:				https://open.kattis.com/problems/tripletexting
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		input = gets.chomp
		word_length = input.length / 3
		
		first_word, second_word, third_word = input.scan(/.{1,#{word_length}}/)
		
		if (first_word == second_word)
			puts first_word
		elsif (first_word == third_word)
			puts first_word
		else
			puts second_word
		end
	end
	
end

solver = Solver.new
solver.solve
