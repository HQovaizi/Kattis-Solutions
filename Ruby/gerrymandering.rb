=begin
 *
 *	Problem:		Gerrymandering
 *	Problem ID:	gerrymandering
 *	url:				https://open.kattis.com/problems/gerrymandering
 *	Solution:		Ruby
 *
=end

class Solver

	def input_to_integers(number_integers)
		input_as_integers = gets.chomp.split(" ").map(&:to_i)
		return input_as_integers
	end
	
	def solve
	
		number_precincts, number_districts = input_to_integers(2)
		districts = Array.new(number_districts) {Array.new(2) {0}}
		for precinct in 1..number_precincts
			district_number, number_votes_A, number_votes_B = input_to_integers(3)
			district_index = district_number - 1
			
			districts[district_index][0] += number_votes_A
			districts[district_index][1] += number_votes_B
		end
		
		total_votes = 0
		total_wastage_A = 0
		total_wastage_B = 0
		
		for district in 0...number_districts
			number_votes_A = districts[district][0]
			number_votes_B = districts[district][1]
			
			number_precinct_votes = number_votes_A + number_votes_B
			total_votes += number_precinct_votes
			
			majority = number_precinct_votes / 2 + 1
			if (number_votes_A > number_votes_B)
				beyond_majority = number_votes_A - majority
				total_wastage_A += beyond_majority
				total_wastage_B += number_votes_B
				puts "A #{beyond_majority} #{number_votes_B}"
			else
				beyond_majority = number_votes_B - majority
				total_wastage_A += number_votes_A
				total_wastage_B += beyond_majority
				puts "B #{number_votes_A} #{beyond_majority}"
			end
		end
		
		efficiency_gap = (total_wastage_A - total_wastage_B).abs / total_votes.to_f
		puts efficiency_gap
	end
	
end

solver = Solver.new
solver.solve
