require 'string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers separated by comma' do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it 'returns the sum of multiple comma-separated numbers' do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it 'handles newlines as delimiters' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiter specified at the beginning' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it 'supports delimiter specified at the beginning and having multiple newlines' do
      expect(StringCalculator.add("//;\n1;\n4,1;2")).to eq(8)
    end

    it 'supports custom delimiter with comma and newline in numbers' do
      expect(StringCalculator.add("//|\n1|2\n3")).to eq(6)
    end

    it 'raises an exception for a single negative number' do
      expect {
        StringCalculator.add("1,-2,3")
      }.to raise_error("negative numbers not allowed -2")
    end

    it 'raises an exception listing all negative numbers' do
      expect {
        StringCalculator.add("1,-2,-3,4")
      }.to raise_error("negative numbers not allowed -2,-3")
    end
    
  end
end