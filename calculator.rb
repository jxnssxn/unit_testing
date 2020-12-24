require 'rspec'
class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end
  def subtract(number_one, number_two)
    return number_one - number_two
  end
  def multiply(number_one, number_two)
    return number_one * number_two
  end
  def divide(dividend, divisor)
    return dividend / divisor
  end
  def square(number)
    return number * number
  end
  def power(number, exponent)
    return number ** exponent
  end
end


RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe '#subtract' do
    it 'should subtract the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(5,4)
      expect(result).to eq(1)
    end
  end

  describe'#multiply' do
    it 'should multiply two numbers and return the product' do
      calculator = Calculator.new
      result = calculator.multiply(5,5)
      expect(result).to eq(25)
    end
  end

  describe '#divide' do
    it 'divedes two numbers and return the quotient' do
      calculator = Calculator.new
      result = calculator.divide(10,2)
      expect(result).to eq(5)
    end
  end

  describe '#square' do
    it 'calculate the square' do
      calculator = Calculator.new
      result =calculator.square(8)
      expect(result).to eq(64)
    end
  end
end