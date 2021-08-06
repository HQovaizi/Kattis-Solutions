=begin
 *
 *	Problem:		License to Launch
 *	Problem ID:	licensetolaunch
 *	url:				https://open.kattis.com/problems/licensetolaunch
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_int = input_array.map(&:to_i)
		return input_int
	end

	def solve
		days = gets.chomp.to_i
		junk_per_day = input_to_int(gets)
		min_amount_junk = junk_per_day[0]
		
		day = 0
		days_til_launch = 0
		junk_per_day.each do |amount_junk|
			if (amount_junk < min_amount_junk)
				min_amount_junk = amount_junk
				days_til_launch = day
			end
			day += 1
		end
		
		puts(days_til_launch)
	end
	
end

solver = Solver.new
solver.solve
