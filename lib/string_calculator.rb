class StringCalculator
  def self.add(input)
    return 0 if input.empty? 
    match = /,|\n/
    num_arr = input.split(match).map(&:to_i)
    num_arr.sum
  end
end