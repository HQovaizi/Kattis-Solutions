=begin
 *
 *	Problem:		Odd Gnome
 *	Problem ID:	oddgnome
 *	url:				https://open.kattis.com/problems/oddgnome
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		groups = gets.chomp.to_i
		for group in 1..groups
			id_list = gets.chomp.split(" ").map(&:to_i)
			number_gnomes = id_list[0]
			prev_id = id_list[1]
			for id in 2..number_gnomes
				curr_id = id_list[id]
				
				if (curr_id != (prev_id + 1))
					puts(id)
					break
				end
				
				prev_id = curr_id
			end
		end
	end
	
end

solver = Solver.new
solver.solve
