require 'rspec'

# This class just dumbs down a regular Array to be staticly sized.
class StaticArray
  # creates array of fixed capacity
  def initialize(capacity)
    self.store = Array.new(capacity, nil)
    @capacity = capacity
  end

  # reading index
  def [](index)
    self.store[index]
  end

  # saving value to index
  def []=(index, value)
    # throw error if setting array beyond the arrays capacity
    raise Error "Out of bounds" if index >= @capacity
    self.store[index] = value
  end

  protected
  attr_accessor :store
end

class DynamicArray
  def initialize
    @length = 0
    @array = StaticArray.new(length=5)
  end

  # [nil, nil]

  # num of eles, NOT storage space
  def length
    @length
  end

  # todo fix this
  def grow_array
    # double size of array
  end

  def [](index)
    # DA length, index to fetch element from
    # length = 4
    #  0  1  2  3
    # [n, n, n, n]
    # [nil, nil, nil, 1]
    #
    # l = 4 and i = 4 == out of bounds
    # l = 4 and i = 2 == out of bounds
    raise "index out of bounds" if index >= self.length
  end

  # [nil, nil, nil, nil, 5]
  # [x, x, x] <-- pushes items from left to right.
  # because if it pushed right to left, array[0] would return nil and not the value you want.
  def push(value)
    # TODO # if at capacity then GROW ARRAY
    @array[@length] = value
    @length = @length + 1
  end

  # todo make pop take a arg
  # mutates caller and removes and returns last item
  def pop()
    # [0, 1, 2, 3, 4]
    index = @length - 1
    result = @array[index]
    # "delete" array by setting it as nil e.g. [0, 1, 2, 3, nil]
    @array[index]=nil
    # decrement length
    @length = @length - 1
    result
  end
end

  # num of eles in array is not the same as space allocated
  # [nil,nil,nil]  length = 0

# uses these tests https://github.com/matthewjf/algorithms/blob/master/dynamic_array_ring_buffer/spec/dynamic_array_spec.rb
# run via: rspec sandbox/static_array.rb --format doc

describe DynamicArray do
  it "starts out empty" do
    arr = DynamicArray.new
    expect(arr.length).to eq(0)
    expect do
      arr[0]
      end.to raise_error("index out of bounds")
    end

  it "pushes/pops items" do
    arr = DynamicArray.new

    5.times { |i| arr.push(i) }
    expect(arr.length).to eq(5)
    5.times { |i| expect(arr[i]) == i }

    4.downto(0) do |i|
      expect(arr.pop).to eq(i)
    end
    expect(arr.length).to eq(0)
  end

  it "breaks on array larger than 5" do
    arr = DynamicArray.new

    6.times { |i| arr.push(i) }
    expect(arr.length).to eq(6)
    6.times { |i| expect(arr[i]) == i }
  end

  it "dynamic array grows" do

  end
end
