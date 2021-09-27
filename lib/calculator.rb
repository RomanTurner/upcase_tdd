
class Calculator
  attr_accessor :cache

  def initialize
    @cache = { 0 => 1 }
  end

  def add(a, b)
    a + b
  end

  def factorial(n)
    return cache[n] if cache[n]
    cache[n] = (1..n).inject do |acc, curr|
      acc = acc * curr
      cache[curr] = acc
    end
  end
end
