=begin
 *
 *	Problem:		WERTYU
 *	Problem ID:	wertyu
 *	url:				https://open.kattis.com/problems/wertyu
 *	Solution:		Ruby
 *
=end

class Solver
	@@KEYBOARD = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./"

	def convert_input(input)
		output = ""
		
		input_array = input.chomp.split('')
		input_array.each { |this_char|
			if (this_char == " ")
				output += " "
			else
				key_index = @@KEYBOARD.index(this_char)
				output += @@KEYBOARD[ (key_index - 1) ]
			end
		}
		puts output
	end	
	
	def solve
		input = gets
		until ( (input == "") or (input == nil) )
			output = convert_input(input)
			input = gets
		end	
	end
	
end

solver = Solver.new
solver.solve
