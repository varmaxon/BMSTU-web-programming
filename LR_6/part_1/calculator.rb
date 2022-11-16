# frozen_string_literal: true

# class calculates irrational number
class Calculator
  def self.calc(epsilon)
    real = 1.618033989
    q = 1.0
    q = 1 + 1 / q while (real - q).abs > epsilon
    q.round(5)
  end
end
