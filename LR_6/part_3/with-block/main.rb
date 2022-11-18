# frozen_string_literal: true

require_relative 'belonging'

puts 'Введите координаты точек X Y (через пробел):'
mas = []
5.times do
  input = gets.chop.split(' ')
  mas.push([input[0].to_f.round(1), input[1].to_f.round(1)])
end
puts "\n x  |  y  | y=cos(x) | y=sin(x**2) |"
puts '----+-----+----------+-------------+'

mas.each do |i|
  print "#{i[0]} | #{i[1]}"
  output = Belonging.neibr(i[0], i[1]) { |x, y| [y == Math.cos(x).round(1), y == Math.sin(x**2).round(1)] }
  if output == 'ERROR'
    puts ' |        ERROR           |'
    next
  end
  print " |    #{output[0].to_s.upcase[0]}     |     #{output[1].to_s.upcase[0]}       |"
  puts
end
