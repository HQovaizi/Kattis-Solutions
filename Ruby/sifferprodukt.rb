=begin
 *
 *	Problem:		
 *	Problem ID:	Digit Product
 *	url:				https://open.kattis.com/problems/sifferprodukt
 *	Solution:		Ruby
 *
=end

class Solver

	def product_digits(digits_string)
		product = 1
		digits_array = digits_string.split("")
		digits_array.each do |digit_string|
			digit_int = digit_string.to_i 
			if (digit_int != 0)
				product *= digit_int
			end
		end
		return product
	end

	def solve
		product = gets.chomp.to_i
		while (product >= 10) 
			product = product_digits(product.to_s)
		end
		puts product
	end
	
end

solver = Solver.new
solver.solve
