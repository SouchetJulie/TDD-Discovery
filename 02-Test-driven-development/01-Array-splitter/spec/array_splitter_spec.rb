# Remember: we are doing TDD here, so don’t rush in the program.
# You need to write the tests first.
require 'array_splitter'

initial_array = [1, 2, 3, 4, 5]

describe '#array_split' do
  it 'returns an empty array and another identical to the initial when index is at the start' do
    first = []
    second = initial_array

    # 0|1-------
    result = array_split(initial_array, 0)
    expect(result[0]).to eq(first)
    expect(result[1]).to eq(second)
  end

  it 'returns the initial array and an empty one when index is equal the length' do
    # expected results
    first = initial_array
    second = []

    # 0------|1
    result = array_split(initial_array, initial_array.length)
    expect(result[0]).to eq(first)
    expect(result[1]).to eq(second)
  end

  it 'returns two arrays with the elements before the index in the 1st, and the elements after (included) in the 2nd' do
    first = [1, 2]
    second = [3, 4, 5]
    
    # 0---|1-----
    result = array_split(initial_array, 2)
    expect(result[0]).to eq(first)
    expect(result[1]).to eq(second)
  end

  it 'raises an error if index is negative' do
    begin
      array_split(initial_array, -1)
      # unreachable code: if we reach it then it's an error
      expect(true).to be(false)
    rescue
      # if we reach here then it's behaving as expected
      expect(true).to be(true)
    end
  end

  it 'raises an error if index is above the length' do
    begin
      array_split(initial_array, initial_array.length + 1)
      # unreachable code: if we reach it then it's an error
      expect(true).to be(false)
    rescue
      # if we reach here then it's behaving as expected
      expect(true).to be(true)
    end
  end
end
