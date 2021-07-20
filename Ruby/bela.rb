=begin
 *
 *	Problem:		Bela
 *	Problem ID:	bela
 *	url:				https://open.kattis.com/problems/bela
 *	Solution:		Ruby
 *
=end

$cards_per_hand = 4
$scores = {
	"A" => [11,11],
	"K" => [4,4],
	"Q" => [3,3],
	"J" => [20,2],
	"T" => [10,10],
	"9" => [14,0],
	"8" => [0,0],
	"7" => [0,0]
}

class Solver

	def input_to_int(input)
		input_array = input.chomp.split(" ")
		input_int = input_array.map(&:to_i)
		return input_int
	end

	def solve
		
		input_array = gets.chomp.split(" ")
		number_hands = input_array[0].to_i
		dominant_suit = input_array[1]
		total_points = 0
		
		for hand in 1..(number_hands * $cards_per_hand)
			card_number, card_suit = gets.chomp.split("")
			if (dominant_suit == card_suit)
				total_points += $scores[card_number][0]
			else
				total_points += $scores[card_number][1]
			end
		end
		
		puts total_points
		
	end
	
end

solver = Solver.new
solver.solve
