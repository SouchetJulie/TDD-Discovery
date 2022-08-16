require '../fruit_emoji.rb'

describe '#fruit_emoji' do
  it 'takes one parameter' do
    expect(method(:fruit_emoji).arity).to eq(1)
  end

  shared_examples 'it works with' do |emoji, argument|
    it "returns #{emoji} when '#{argument}' is passed as an argument" do
      expect fruit_emoji(argument).to eq(emoji)
    end
  end

  it_behaves_like 'it works with', '🍎', 'apple'
  it_behaves_like 'it works with', '🍊', 'orange'
  it_behaves_like 'it works with', '🍌', 'banana'
  it_behaves_like 'it works with', '🍑', 'peach'
end
