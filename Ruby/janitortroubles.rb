=begin
 *
 *	Problem:		Janitor Troubles
 *	Problem ID:	janitortroubles
 *	url:				https://open.kattis.com/problems/janitortroubles
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		s1, s2, s3, s4 = gets.chomp.split(" ").map(&:to_i)
		semiperimeter = ((s1 + s2 + s3 + s4) / 2.0)
		
		max_area = Math.sqrt(
			(semiperimeter - s1) *
			(semiperimeter - s2) *
			(semiperimeter - s3) *
			(semiperimeter - s4)
		)
		puts(max_area)
	end
	
end

solver = Solver.new
solver.solve
