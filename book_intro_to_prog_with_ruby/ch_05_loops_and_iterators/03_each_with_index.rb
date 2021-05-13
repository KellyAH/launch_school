# URL: https://launchschool.com/books/ruby/read/loops_iterators
#
# NOTE: this exercise used to be in the book but looks like it was removed.
# Keeping this here for reference.
#
# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

netflix_shows = ['carmen sandiego', "chef's table", 'stranger things', 'she-ra princess of power']
netflix_shows.each_with_index {|tv_show,index| puts "Netflix show: #{tv_show} is at index: #{index}."}