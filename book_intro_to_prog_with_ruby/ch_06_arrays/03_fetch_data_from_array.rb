# URL https://launchschool.com/books/ruby/read/arrays
#
# How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]

# fetch via index
p arr[1][0]

# fetch via methods
p arr.last.first

# fetch via nested each blocks
# single line format
arr.each {|words| words.each {|word| p word if word == "example"}}

# multi line format
arr.each do |words|
  words.each do |word|
    p word if word == "example"
  end
end

# using flatten method
arr.flatten.each_with_index {|word| p word if word == "example" }