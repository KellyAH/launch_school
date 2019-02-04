# What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# each block returns the array itself.

# returns [1, 2, 3, 4, 5]
