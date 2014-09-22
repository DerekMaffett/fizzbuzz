require 'fizzbuzzsivv'


describe Fizzbuzzsivv do
  before do
    @test_path = 'spec/test_values.txt'
  end

  it 'should return "fizz" for multiples of 3' do
    expect(Fizzbuzzsivv.analyze(3, @test_path)).to eq 'fizz'
  end

  it 'should return "buzz" for multiples of 5' do
    expect(Fizzbuzzsivv.analyze(5, @test_path)).to eq 'buzz'
  end

  it 'should return "sivv" for multiples of 7' do
    expect(Fizzbuzzsivv.analyze(7, @test_path)).to eq 'sivv'
  end

  it 'should return "fizzbuzz" for multiples of both 3 and 5' do
    expect(Fizzbuzzsivv.analyze(15, @test_path)).to eq 'fizzbuzz'
  end

  it 'should return "buzzsivv" for multiples of both 5 and 7' do
    expect(Fizzbuzzsivv.analyze(35, @test_path)).to eq 'buzzsivv'
  end

  it 'should return "fizzbuzzsivv" for multiples of 3, 5, and 7' do
    expect(Fizzbuzzsivv.analyze(105, @test_path)).to eq 'fizzbuzzsivv'
  end

  it 'should return strings in order of the rules file' do
    expect(Fizzbuzzsivv.analyze(35, @test_path)).not_to eq 'sivvbuzz'
  end

  it 'should return input if not a multiple of any of the requested numbers' do
    expect(Fizzbuzzsivv.analyze(17, @test_path)).to eq 17
  end
end
