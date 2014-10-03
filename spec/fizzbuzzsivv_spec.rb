require 'fizzbuzzsivv'

describe Fizzbuzzsivv do
  before do
    @test_path = 'spec/test_values.txt'
  end

  it 'should return "fizz" for multiples of 3' do
    expect(Fizzbuzzsivv.new(@test_path).analyze(3)).to eq 'fizz'
  end

  it 'should return "buzz" for multiples of 5' do
    expect(Fizzbuzzsivv.new(@test_path).analyze(5)).to eq 'buzz'
  end

  it 'should return "sivv" for multiples of 7' do
    expect(Fizzbuzzsivv.new(@test_path).analyze(7)).to eq 'sivv'
  end

  it 'should return "fizzbuzz" for multiples of both 3 and 5' do
    expect(Fizzbuzzsivv.new(@test_path).analyze(15)).to eq 'fizzbuzz'
  end

  it 'should return "buzzsivv" for multiples of both 5 and 7' do
    expect(Fizzbuzzsivv.new(@test_path).analyze(35)).to eq 'buzzsivv'
  end

  it 'should return "fizzbuzzsivv" for multiples of 3, 5, and 7' do
    expect(Fizzbuzzsivv.new(@test_path).analyze(105)).to eq 'fizzbuzzsivv'
  end

  it 'should return strings in order of the rules file' do
    expect(Fizzbuzzsivv.new(@test_path).analyze(35)).to eq 'buzzsivv'
  end

  it 'should return input if not a multiple of any of the requested numbers' do
    expect(Fizzbuzzsivv.new(@test_path).analyze(17)).to eq 17
  end
end
