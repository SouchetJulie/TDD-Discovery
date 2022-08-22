require 'password_generator'

# to fix
special_char = ['@', '?', '!', '#', '$', '€', '%', '&', '/', '+', '-', '*']
upper_char = ('A'..'Z').to_a
lower_char = ('a'..'z').to_a
numeral_char = (0..9).to_a.map(&:to_s)

describe '#password_generator' do
  it 'returns an error if the length is lower than 8' do
    error = 'Your password must be at least 8 characters long'

    expect(password_generator(0,false)).to eq(error)
    expect(password_generator(7,true)).to eq(error)
  end

  it 'has the right length' do
    expect(password_generator(8,false).length).to eq(8)
    expect(password_generator(24,true).length).to eq(24)
  end

  it 'has no special characters' do
    expect(password_generator(10, false).chars & special_char).to be_empty
  end

  it 'contains lowercase letters' do
    expect(password_generator(10, false).chars.intersection(lower_char)).not_to be_empty
    expect(password_generator(10, true).chars.intersection(lower_char)).not_to be_empty
  end

  it 'contains uppercase letters' do
    expect(password_generator(10, false).chars.intersection(upper_char)).not_to be_empty
    expect(password_generator(10, true).chars.intersection(upper_char)).not_to be_empty
  end

  it 'contains numbers' do
    expect(password_generator(10, false).chars.intersection(numeral_char)).not_to be_empty
    expect(password_generator(10, true).chars.intersection(numeral_char)).not_to be_empty
  end

  it 'only has special characters included in the list provided' do
    all_char = special_char + upper_char + lower_char + numeral_char

    expect(password_generator(10, false).chars.difference(all_char)).to be_empty
  end

  it 'has at least 3 special characters' do
    expect(password_generator(10, true).chars & special_char).not_to be_empty
    expect(password_generator(10, true).chars.select { |i| special_char.include?(i) }.length).to be >= 3
  end

end
