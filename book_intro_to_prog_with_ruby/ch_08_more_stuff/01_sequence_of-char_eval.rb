# URL: https://launchschool.com/books/ruby/read/more_stuff#regex
#
# Write a program that checks if the sequence of characters
# "lab" exists in the following strings. If it does exist,
# print out the word.
#
# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"

# assumptions:
# that target string "lab" is case sensitive
# thus eg. output is: "laboratory" and "elaborate"

#  SOLVED USING COMMON METHODS
# iterate thru array of words contains a target word and if so return that word
# returns array of strings meeting condition in the block
def eval_if_array_contains_string(array, target_string)
  array.select {|word| word.include?(target_string)}
end

#  SOLVED USING REGEX ver1
def eval_if_array_contains_string_via_regexv1(array, target_string)
  array.select {|word| word =~ /#{target_string}/}
end

#  SOLVED USING REGEX ver2
def eval_if_array_contains_string_via_regexv2(array, target_string)
  array.select {|word| /#{target_string}/.match(word) }
end

#  SOLVED USING REGEX ver3
# study how LS solved it.

array = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
string = "lab"
# puts eval_if_array_contains_string(array, string)
# puts eval_if_array_contains_string_via_regexv1(array, string)
puts eval_if_array_contains_string_via_regexv2(array, string)