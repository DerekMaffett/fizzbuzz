# This class functions as a Fizzbuzz calculator.
class Fizzbuzz
  def self.analyze(input)
    return input unless input % 3 == 0 || input % 5 == 0
    output = ''
    output += 'Fizz' if input % 3 == 0
    output += 'Buzz' if input % 5 == 0
    output
  end
end
