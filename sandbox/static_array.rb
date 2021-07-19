# This class just dumbs down a regular Array to be staticly sized.
class StaticArray
  def initialize(length)
    self.store = Array.new(length, nil)
  end

  # O(1)
  def [](index)
    self.store[index]
  end

  # O(1)
  def []=(index, value)
    self.store[index] = value
  end

  protected
  attr_accessor :store
end

a = StaticArray.new(2)


p a.inspect

a[0]="a"
a[1]="b"
a[2]="c"
a[3]="d"

p a.inspect

# how dybnmic arrays work
# avg constant time for R/W, pop push
# amertize the spikes of time spent creating new array
# R/W 1ms
#
# TODO: ring buffer
# TODO: build dynamic array class that does below behavior usning static array class
# TODO:
#
original_array = [1, 2, 3, 4, 5] # n

# "the concept/idea" vs "the implementation"
# abstract data type (defined requiements/behavior of data structure .e.g read/write to index) v.s. data structure (implementatin and usage of abstract data type)

# 12ms - ceate new array and write each item ot it and the new item
new_array =      [1, 2, 3, 4, 5, nil, nil, nil, nil, nil] # 2n
# cost n operations / next n insertions

original_array = [1, 2, 3, nil, nil, nil, nil, nil, nil, nil] # n = 10
# pop
new_array = [1, 2, nil, nil, nil] # n = 5
