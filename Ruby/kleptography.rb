=begin
 *
 *	Problem:		Kleptography
 *	Problem ID:	kleptography
 *	url:				https://open.kattis.com/problems/kleptography
 *	Solution:		Ruby
 *
=end

require_relative 'hq_lib'

class Solver
include HQ_Lib
	
	def solve
		alphabet_array = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
		
		length_keyword, length_text = input_to_int(gets)
		last_letters_text = gets.chomp
		cipher_text = gets.chomp
		plain_text = last_letters_text
		
		number_remaining_letters = length_text - length_keyword		
		for missing_letter in 0...number_remaining_letters
			current_cipher = cipher_text.reverse[missing_letter]
			current_plain = plain_text.reverse[missing_letter]
			
			missing_letter_index = (alphabet_array.index(current_cipher) - alphabet_array.index(current_plain)) % 26
			plain_text = alphabet_array[missing_letter_index] + plain_text
		end
		
		puts (plain_text)
	end
	
end

solver = Solver.new
solver.solve