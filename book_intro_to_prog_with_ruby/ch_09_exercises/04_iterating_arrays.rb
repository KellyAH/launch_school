numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.

#---------------------#
# Destructive methods #
#---------------------#
# methods that mutate the caller / original array
numbers.prepend(0)
numbers.append(11)
p numbers

# NOTE: prepend is an alias to unshift
# NOTE: push is an alias for append
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.unshift(0)
numbers.push(11)
p numbers

# shovel operator (mutates the caller)
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = [0] + numbers
new_array << 11
p new_array

#-------------------------#
# Non-destructive methods #
#-------------------------#
# Array class methods: + and concat (concatenation)
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
another_new_array = [0] + numbers
another_new_array.concat([11])
p another_new_array

# Array class + method (concatenation)
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
result = [0] + numbers + [11]
p result
