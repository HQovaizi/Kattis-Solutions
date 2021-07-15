=begin
 *
 *	Problem:		Heart Rate
 *	Problem ID:	heartrate
 *	url:				https://open.kattis.com/problems/heartrate
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
	
		cases = gets.chomp.to_i
		for this_case in 1..cases
			beats, seconds = gets.chomp.split(" ").map(&:to_f)
			
			range = 60 / seconds
			bpm = 60 * beats / seconds
			
			min_ABPM = (bpm - range).round(4)
			max_ABPM = (bpm + range).round(4)
			
			puts "#{min_ABPM} #{bpm} #{max_ABPM}"
		end
		
	end
	
end

solver = Solver.new
solver.solve
