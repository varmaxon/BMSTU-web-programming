require_relative 'array_worker.rb'

p "Input X:"
x = gets.chop.to_i
p "Input Y:"
y = gets.chop.to_i
p ArrayWorker.calc(x, y)
