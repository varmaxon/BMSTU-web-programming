# frozen_string_literal: true

# class works with numbers
class Calculator
  include Math
  def self.calc(num_a, num_b)
    chisl = 2 * cos(num_a - Math::PI / 6)
    snam = 0.5 + sin(num_b)**2
    (chisl / snam).round(4)
  end
end
