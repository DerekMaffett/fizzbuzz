require_relative '../fizzbuzz.rb'

describe Fizzbuzz do
  fizz_values = [3, 6, 9, 12, 18, 21, 24, 333]
  buzz_values = [5, 10, 20, 25, 100, 1075]
  fizzbuzz_values = [15, 30, 45, 150]
  return_input_values = [1, 2, 11, 53, 74]

  it 'should return "Fizz" for multiples of three' do
    fizz_values.each do |input|
      expect(Fizzbuzz.analyze(input)).to eq('Fizz')
    end
  end

  it 'should return "Buzz" for multiples of five' do
    buzz_values.each do |input|
      expect(Fizzbuzz.analyze(input)).to eq('Buzz')
    end
  end

  it 'should return "Fizzbuzz" for multiples of both five and three' do
    fizzbuzz_values.each do |input|
      expect(Fizzbuzz.analyze(input)).to eq('FizzBuzz')
    end
  end

  it 'should return the input if not divisible by three or five' do
    return_input_values.each do |input|
      expect(Fizzbuzz.analyze(input)).to eq(input)
    end
  end
end
