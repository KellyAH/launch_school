require 'rspec'

# This class just dumbs down a regular Array to be staticly sized.
class StaticArray
  # creates array of fixed length
  def initialize(length)
    self.store = Array.new(length, nil)
  end

  # reading index
  def [](index)
    self.store[index]
  end

  # saving value to index
  def []=(index, value)
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
  # [x, x, x] <--
  def push(value)
    @array[@length] = value
    @length = @length + 1
  end

end

  # num of eles in array is not the same as space allocated
  # [nil,nil,nil]  length = 0

# use these tests https://github.com/matthewjf/algorithms/blob/master/dynamic_array_ring_buffer/spec/dynamic_array_spec.rb

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

    # expect(arr.length).to eq(5)
    # 5.times { |i| expect(arr[i]) == i }
    #
    # 4.downto(0) do |i|
    #   expect(arr.pop).to eq(i)
    # end
    # expect(arr.length).to eq(0)
  end



end
