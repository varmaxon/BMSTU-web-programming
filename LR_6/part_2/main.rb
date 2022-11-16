# frozen_string_literal: true

require_relative 'calculator'

eps1 = 10**-3
eps2 = 10**-4
puts "Result with epsilon = 0.001 : #{Calculator.calc(eps1)}"
puts "Result with epsilon = 0.0001: #{Calculator.calc(eps2)}"
