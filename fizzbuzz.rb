class Fizzbuzz
	def self.analyze(input)
		return "FizzBuzz" if input % 3 == 0 && input % 5 == 0
		return "Fizz" if input % 3 == 0
		return "Buzz" if input % 5 == 0
		return input
	end
end