=begin
 *
 *	Problem:		Cryptographer's Conundrum
 *	Problem ID:	conundrum
 *	url:				https://open.kattis.com/problems/conundrum
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		cipher = gets.chomp
		cipher_slices = cipher.scan(/.../)
		number_Ps = 0
		number_Es = 0
		number_Rs = 0
		
		cipher_slices.each do |slice|
			number_Ps += 1 if (slice[0] == "P") 
			number_Es += 1 if (slice[1] == "E") 
			number_Rs += 1 if (slice[2] == "R") 
		end
		
		number_days = cipher.length - number_Ps - number_Es - number_Rs
		puts(number_days)
	end
	
end

solver = Solver.new
solver.solve
