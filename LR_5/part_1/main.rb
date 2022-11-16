# frozen_string_literal: true

require_relative 'calculator'

p 'Input X:'
x = gets.chop.to_i
p 'Input Y:'
y = gets.chop.to_i
p Calculator.calc(x, y)
