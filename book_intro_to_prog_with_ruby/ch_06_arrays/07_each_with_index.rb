# URL https://launchschool.com/books/ruby/read/arrays
#
# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

netflix_shows = ["carmen sandiego",
                 "chef's table",
                 "stranger things",
                 "she-ra princess of power"]

# inline format
netflix_shows.each_with_index {|tv_show,index| puts "Netflix show: #{tv_show} is at index: #{index}."}

# multi line format
netflix_shows.each_with_index do |title,index|
  puts "Netflix show: #{title} is at index: #{index}."
end