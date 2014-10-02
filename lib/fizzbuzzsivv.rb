class Fizzbuzzsivv
  def self.analyze(num, path)
    @fizzbuzz_values = Fizzbuzzsivv.parse_rules(path)
    @result = ''
    @fizzbuzz_values.each do |k, v|
      @result += v if num % k.to_i == 0
    end
    @result.empty? ? num : @result
  end

  def self.parse_rules(path)
    File.open(path) do |file|
      lines = file.readlines
      filtered_lines = lines.map do |line|
        line.gsub!("\n", '')
        line.split(', ')
      end
      Hash[filtered_lines]
    end
  end
end
