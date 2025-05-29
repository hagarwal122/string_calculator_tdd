class StringCalculator
  def self.add(input)
    return 0 if input.empty? 
    num_arr = input.split(",").map(&:to_i)
    num_arr.sum
  end
end