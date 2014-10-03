require 'csv'

class Fizzbuzzsivv
  def initialize(path)
    @fizzbuzz_values = CSV.read(path).to_h
  end

  def analyze(num)
    @result = ''
    @fizzbuzz_values.each do |k, v|
      @result += v if num % k.to_i == 0
    end
    @result.empty? ? num : @result
  end
end
