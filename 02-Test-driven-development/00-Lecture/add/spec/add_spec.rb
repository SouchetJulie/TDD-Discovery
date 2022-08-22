require 'add'

describe '#add' do
  num1 = (1..100).to_a.sample
  num2 = (1..100).to_a.sample

  it 'correctly adds two numbers' do
    expect(add(num1, num2)).to eq(num1 + num2)
  end

  it 'returns an error if args are not numbers' do
    expect(add(num1, true)).to eq('You must pass numbers to the #add method')
    expect(add(num1, :hello)).to eq('You must pass numbers to the #add method')
    expect(add(num1, 'hello')).to eq('You must pass numbers to the #add method')
  end
end
