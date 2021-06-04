# =begin
 # *
 # *	Problem:		A Different Problem
 # *	Problem ID:	different
 # *	url:				https://open.kattis.com/problems/different
 # *	Solution:		Ruby
 # *
# =end

STDIN.each_line do |line|
	first_int, second_int = line.split(" ").map(&:to_i)
	abs_diff = (first_int - second_int).abs
	puts abs_diff
end