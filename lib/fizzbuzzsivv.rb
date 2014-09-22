class Fizzbuzzsivv

  def self.analyze(num)
    File.open('lib/values.txt') do |file|
      lines = file.readlines
      filtered_lines = lines.map do |line|
        line.gsub!("\n", "")
        line.split(", ")
      end
      @fizzbuzz_values = Hash[filtered_lines]
    end

    @result = ""
    @fizzbuzz_values.each do |k, v|
      @result += v if num % k.to_i == 0
    end
    @result
  end
end
