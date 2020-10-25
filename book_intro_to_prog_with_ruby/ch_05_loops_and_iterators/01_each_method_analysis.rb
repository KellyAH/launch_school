# URL: https://launchschool.com/books/ruby/read/loops_iterators
#
# What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# iteration # | value of a | line 7 evaluation
#    1        |    1       |      2
#    2        |    2       |      3
#    3        |    3       |      4
#    4        |    4       |      5
#    5        |    5       |      6

# According to https://ruby-doc.org/core-2.4.1/Array.html#method-i-each
# the each method returns the array or Enumerator that invoked it.

# Thus it returns [1, 2, 3, 4, 5]
