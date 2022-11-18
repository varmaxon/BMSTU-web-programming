# frozen_string_literal: true
include Math

# class works with numbers
class ArrayWorker
  def self.calc(a, b)
    # return if (a.zero? && b.zero?)

    chisl = 2 * cos(a - (Math::PI)/6)
    snam = 0.5 + (sin(b))**2

    return (chisl/snam).round(4)
  end
end
