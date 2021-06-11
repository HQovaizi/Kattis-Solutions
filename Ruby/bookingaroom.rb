=begin
 *
 *	Problem:		Booking a Room
 *	Problem ID:	bookingaroom
 *	url:				https://open.kattis.com/problems/bookingaroom
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		line = gets.chomp.split(" ").map(&:to_i)
		number_rooms = line[0]
		number_booked = line[1]
		
		if (number_rooms == number_booked)
			puts("too late")
		else
			booked_rooms = Array.new
			
			for room in 1..number_booked
				room_number = gets.chomp.to_i
				booked_rooms.push(room_number)
			end
			
			for room in 1..number_rooms
				if not(booked_rooms.include?(room))
					puts room
					break
				end
			end
		end
		
	end
	
end

solver = Solver.new
solver.solve
