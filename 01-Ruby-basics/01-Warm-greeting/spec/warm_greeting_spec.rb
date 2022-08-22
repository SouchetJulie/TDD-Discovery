require 'warm_greeting'

describe '#warm_greeting' do
  it 'calls me by my name' do
    expect(warm_greeting('John')).to include('John').once
  end

  it 'greets correctly on the morning' do
    expect(warm_greeting('John', Time.new(2022, 01, 01, 3, 00))).to eq('Good morning, John')
    expect(warm_greeting('John', Time.new(2022, 01, 01, 8, 00))).to eq('Good morning, John')
    expect(warm_greeting('John', Time.new(2022, 01, 01, 11, 59))).to eq('Good morning, John')
  end

  it 'greets correctly on the afternoon' do
    expect(warm_greeting('John', Time.new(2022, 01, 01, 12, 00))).to eq('Good afternoon, John')
    expect(warm_greeting('John', Time.new(2022, 01, 01, 15, 00))).to eq('Good afternoon, John')
    expect(warm_greeting('John', Time.new(2022, 01, 01, 17, 59))).to eq('Good afternoon, John')
  end

  it 'greets correctly on the evening' do
    expect(warm_greeting('John', Time.new(2022, 01, 01, 18, 00))).to eq('Good evening, John')
    expect(warm_greeting('John', Time.new(2022, 01, 01, 20, 00))).to eq('Good evening, John')
    expect(warm_greeting('John', Time.new(2022, 01, 01, 21, 59))).to eq('Good evening, John')
  end

  it 'greets correctly in the night' do
    expect(warm_greeting('John', Time.new(2022, 01, 01, 22, 00))).to eq('Good night, John')
    expect(warm_greeting('John', Time.new(2022, 01, 01, 00, 00))).to eq('Good night, John')
    expect(warm_greeting('John', Time.new(2022, 01, 01, 02, 59))).to eq('Good night, John')
  end
end
