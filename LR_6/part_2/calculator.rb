# frozen_string_literal: true

# class calculates irrational number
class Calculator
  def self.calc(epsilon)
    list = Enumerator.new do |yielder|
      real = 1.618033989
      @q = 1.0
      loop do
        yielder.yield @q, real
        @q = 1 + 1 / @q
      end
    end
    list.take_while { |q, real| (real - q).abs > epsilon }
    @q.round(4)
  end
end
