require_relative "../fizzbuzz.rb"

describe Fizzbuzz do 
	it "should return 'Fizz' for multiples of three" do
		expect(Fizzbuzz.analyze(3)).to eq("Fizz")
	end 

	it "should return 'Buzz' for multiples of five" do
		expect(Fizzbuzz.analyze(5)).to eq("Buzz")
	end

	it "should return 'Fizzbuzz' for multiples of both five and three" do
		expect(Fizzbuzz.analyze(15)).to eq("FizzBuzz")
	end

	it "should return the input if not divisible by three or five" do
		expect(Fizzbuzz.analyze(11)).to eq(11)
	end
end