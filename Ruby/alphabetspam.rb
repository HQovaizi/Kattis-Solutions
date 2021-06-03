=begin
 *
 *	Problem:		Alphabet Spam
 *	Problem ID:	alphabetspam
 *	url:				https://open.kattis.com/problems/alphabetspam
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		user_input = gets.chomp.split("") # gets.chomp.split("")
		num_chars = user_input.length
		num_spaces = num_lowercase = num_uppercase = num_symbols = 0

		user_input.each do |char|
			if (char == "_")
				num_spaces += 1.0 / num_chars
			elsif (char.match?(/[a-z]/))
				num_lowercase += 1.0 / num_chars
			elsif (char.match?(/[A-Z]/))
				num_uppercase += 1.0 / num_chars
			else
				num_symbols += 1.0 / num_chars
			end
		end
		puts num_spaces, num_lowercase, num_uppercase, num_symbols
	end # solve method
	
end # end Main class

solver = Solver.new
solver.solve