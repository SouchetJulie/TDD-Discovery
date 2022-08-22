require 'fruit_emoji'

describe '#fruit_emoji' do
  it 'takes one parameter' do
    expect(method(:fruit_emoji).arity).to eq(1)
  end

  it "returns '🍎' when 'apple' is passed as an argument" do
    expect(fruit_emoji('apple')).to eq('🍎')
  end

  it "returns '🍊' when 'orange' is passed as an argument" do
    expect(fruit_emoji('orange')).to eq('🍊')
  end

  it "returns '🍌' when 'banana' is passed as an argument" do
    expect(fruit_emoji('banana')).to eq('🍌')
  end

  it "returns '🍑' when 'apple' is passed as an argument" do
    expect(fruit_emoji('peach')).to eq('🍑')
  end

  it "returns 'Sorry, I don't know that fruit' with any other input." do
    fallback_sentence = "Sorry, I don't know that fruit"

    expect(fruit_emoji('')).to eq(fallback_sentence)
    expect(fruit_emoji('pineapple')).to eq(fallback_sentence)
  end
end
