class Fizzbuzz
	def self.analyze(input)
		return input if !(input % 3 == 0 || input % 5 == 0)
		output = ""
		output += "Fizz" if input % 3 == 0
		output += "Buzz" if input % 5 == 0
		return output
	end
end