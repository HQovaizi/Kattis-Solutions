=begin
 *
 *	Problem:		3D Printed Statues
 *	Problem ID:	3dprinter
 *	url:				https://open.kattis.com/problems/3dprinter
 *	Solution:		Ruby
 *
=end

numStatues = gets.to_i

numDays = ( Math.log(numStatues, 10) / Math.log(2, 10) )
minNumDays = numDays.ceil
minNumDays += 1

puts (minNumDays)