class Fizzbuzzsivv
  def initialize(path)
    File.open(path) do |file|
      lines = file.readlines
      filtered_lines = lines.map do |line|
        line.gsub!("\n", '')
        line.split(', ')
      end
      @fizzbuzz_values = Hash[filtered_lines]
    end
  end

  def analyze(num)
    @result = ''
    @fizzbuzz_values.each do |k, v|
      @result += v if num % k.to_i == 0
    end
    @result.empty? ? num : @result
  end
end
