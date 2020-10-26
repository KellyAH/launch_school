# URL https://launchschool.com/books/ruby/read/arrays
#
# What will the following programs return? What is the value of arr after each?

# 1.
arr = ["b", "a"]
arr = arr.product(Array(1..3))
# product Returns an array of all combinations of elements from all arrays.
# make it easier to read: ["b", "a"].product([1,2,3])
# => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr.first.delete(arr.first.last)
# arr.first => ["b", 1]
# arr.first.last => 1
# delete mutates the original array
# evaluates to: ["b", 1].delete(1)
# returns 1, the deleted item
# The original array is mutated: [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# 2.
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
# make it easier to read: ["b", "a"].product([[1,2,3]])
# => [["b", [1, 2, 3]], ["a", [1, 2, 3]]]

arr.first.delete(arr.first.last)
# arr.first => ["b", [1, 2, 3]]
# arr.first.last => [1, 2, 3]
# returns [1, 2, 3], the deleted item
# The original array is mutated: [["b"], ["a", [1, 2, 3]]]