=begin
 *
 *	Library consisting of commonly used methods.
 *
=end

module HQ_Lib
	
	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_int = input_array.map(&:to_i)
		return input_int
	end
		
	def input_to_float(input)
		input_array = input.chomp.split(" ")
		input_float = input_array.map(&:to_f)
		return input_float
	end
	
end