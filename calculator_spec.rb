# calculator_spec.rb
require 'rspec'
require_relative 'calculator'

RSpec.describe Calculator do
  before(:each) do
    @calculator = Calculator.new
  end

  describe '#add' do
    it 'adds two positive numbers' do
      expect(@calculator.add(2, 3)).to eq(5)
    end

    it 'adds a positive number and a negative number' do
      expect(@calculator.add(2, -3)).to eq(-1)
    end
  end

  describe '#subtract' do
    it 'subtracts a smaller number from a larger number' do
      expect(@calculator.subtract(5, 3)).to eq(2)
    end

    it 'subtracts a larger number from a smaller number' do
      expect(@calculator.subtract(3, 5)).to eq(-2)
    end
  end
end
