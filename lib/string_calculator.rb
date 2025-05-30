class StringCalculator
  def self.add(input)
    return 0 if input.empty? 
    delimiter = /,|\n/
    numbers_str = input

    if input.start_with?("//")
      parts = input.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2])
      numbers_str = parts[1]
    end

    num_arr = numbers_str.split(/#{delimiter}|,|\n/).map(&:to_i)
    num_arr.sum
  end
end