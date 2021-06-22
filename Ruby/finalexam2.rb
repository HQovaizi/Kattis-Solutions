=begin
 *
 *	Problem:		Final Exam
 *	Problem ID:	finalexam2
 *	url:				https://open.kattis.com/problems/finalexam2
 *	Solution:		Ruby
 *
=end

class Solver

	def solve
		number_questions = gets.chomp.to_i
		result = 0
		
		previous_answer = gets.chomp
		for question in 1...number_questions
			current_answer = gets.chomp
			if (previous_answer == current_answer)
				result += 1
			end
			previous_answer = current_answer
		end
		
		puts result
	end
	
end

solver = Solver.new
solver.solve
