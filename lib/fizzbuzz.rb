# This class functions as a Fizzbuzz calculator.
class Fizzbuzz
  def analyze(num)
    return num unless num % 3 == 0 || num % 5 == 0
    output = ''
    output += 'Fizz' if num % 3 == 0
    output += 'Buzz' if num % 5 == 0
    output
  end
end
