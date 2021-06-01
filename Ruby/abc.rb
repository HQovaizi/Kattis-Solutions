=begin
 *
 *	Problem:		ABC
 *	Problem ID:	abc
 *	url:				https://open.kattis.com/problems/abc
 *	Solution:		Ruby
 *
=end

# # read integers
integers_strings = (gets.chomp).split(" ")
integers_array = [integers_strings[0].to_i, integers_strings[1].to_i, integers_strings[2].to_i]
a, b, c = integers_array.min(3)

integers_mapping = {
	"A" => a,
	"B" => b,
	"C" => c,
}

# read desired order
ordering = (gets.chomp).split("")

# output desired order
output = integers_mapping[ordering[0]].to_s + " " + integers_mapping[ordering[1]].to_s + " " + integers_mapping[ordering[2]].to_s
puts output