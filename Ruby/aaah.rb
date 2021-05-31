=begin
 *
 *	Problem:		Aaah!
 *	Problem ID:	aaah
 *	url:				https://open.kattis.com/problems/aaah
 *	Solution:		Ruby
 *
=end

jon = gets.chomp
doctor = gets.chomp

if jon.length < doctor.length
	puts "no"
else
	puts "go"
end