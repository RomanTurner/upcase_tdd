require "calculator"
describe Calculator do
  before do
    @calculator = Calculator.new
  end
  describe "#initialize" do
    it "should exist" do
      expect(@calculator).to eq(@calculator)
    end
  end
  describe "#add" do
    it "returns the sum of its two arguments" do
      expect(@calculator.add(5, 10)).to eq(15)
    end
    it "returns the sum of two different arguments" do
      expect(@calculator.add(1, 2)).to eq(3)
    end
  end
  describe "#factorial" do
    it "returns 1 when given 0" do
      expect(@calculator.factorial(0)).to eq(1)
    end
    it "returns 120 when given 5" do
      expect(@calculator.factorial(5)).to eq(120)
    end
    it "big number not to crash" do
      expect(@calculator.factorial(10)).to eq(3628800)
    end
  end
end
