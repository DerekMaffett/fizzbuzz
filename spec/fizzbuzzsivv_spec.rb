require 'fizzbuzzsivv'

describe Fizzbuzzsivv do
  it 'should return "fizz" for multiples of 3' do
    expect(Fizzbuzzsivv.analyze(3)).to eq 'fizz'
  end

  it 'should return "buzz" for multiples of 5' do
    expect(Fizzbuzzsivv.analyze(5)).to eq 'buzz'
  end

  it 'should return "sivv" for multiples of 7' do
    expect(Fizzbuzzsivv.analyze(7)).to eq 'sivv'
  end

  it 'should return "fizzbuzz" for multiples of both 3 and 5' do
    expect(Fizzbuzzsivv.analyze(15)).to eq 'fizzbuzz'
  end

  it 'should return "buzzsivv" for multiples of both 5 and 7' do
    expect(Fizzbuzzsivv.analyze(35)).to eq 'buzzsivv'
  end

  it 'should return "fizzbuzzsivv" for multiples of 3, 5, and 7' do
    expect(Fizzbuzzsivv.analyze(105)).to eq 'fizzbuzzsivv'
  end

  it 'should return strings in the proper order' do
    expect(Fizzbuzzsivv.analyze(35)).not_to eq 'sivvbuzz'
  end
end
