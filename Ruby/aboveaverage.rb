=begin
 *
 *	Problem:		Above Average
 *	Problem ID:	aboveaverage
 *	url:				https://open.kattis.com/problems/aboveaverage
 *	Solution:		Ruby
 *
=end

# above_average
def above_average(grades, average)
	above_average = 0
	grades.each do |grade|
		if (grade > average)
			above_average += 1
		end
	end
	ratio =  (above_average.to_f / grades.size) * 100
	return ratio
end # end above_average

# main
num_cases = gets.chomp.to_i
for current_case in 1..num_cases
	case_data = gets.chomp.split(" ")
	num_students = case_data[0].to_i
	grades = case_data.slice( 1, (case_data.size - 1) ).map(&:to_i)
	
	total_grades = grades.sum	
	average = total_grades.to_f / num_students
	
	result = above_average(grades, average)
	puts "%.3f%%" % result.round(3)
end