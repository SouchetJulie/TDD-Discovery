require 'leap_year'

shared_examples 'returns an error message if argument is not a integer' do |method_name|
  error_message = "Argument is not a year"

  it { expect(send(method_name, 'hi')).to eq(error_message) }
  it { expect(send(method_name, true)).to eq(error_message) }
  it { expect(send(method_name, [20, 22])).to eq(error_message) }
  it { expect(send(method_name, 20.22)).to eq(error_message) }
end

describe '#leap?' do
  it "returns true if it's a leap year, false otherwise." do
    expect(leap?(2012)).to be true
    expect(leap?(808)).to be true
    expect(leap?(2022)).to be false
    expect(leap?(806)).to be false
  end

  it_behaves_like 'returns an error message if argument is not a integer', :leap?
end

describe '#big_leap' do
  it "returns the message 'XXXX is a leap year.' if it's a leap year." do
    expect(big_leap(2000)).to eq("2000 is a leap year.")
    expect(big_leap(1492)).to eq("1492 is a leap year.")
  end

  it "returns the message 'XXXX is not a leap year. The next one is YYYY.' if it's not a leap year." do
    expect(big_leap(2022)).to eq('2022 is not a leap year. The next one is 2024.')
    expect(big_leap(1997)).to eq('1997 is not a leap year. The next one is 2000.')
  end

  it_behaves_like 'returns an error message if argument is not a integer', :big_leap
end
