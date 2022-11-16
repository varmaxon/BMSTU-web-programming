# frozen_string_literal: true

require_relative 'belonging'

puts 'Введите координаты точек X Y (через пробел):'
mas = []
5.times do
  input = gets.chop.split(' ')
  mas.push([input[0].to_f, input[1].to_f])
end

puts 'Блок (Б) или Лямбда (Л)?'
input = gets.chop

puts ' x  |  y  | y=cos(x) | y=sin(x**2) |'
puts '----+-----+----------+-------------+'

if input == 'Л' then
  lmbd = ->(x, y) { return y == Math.cos(x).round(1), y == Math.sin(x**2).round(1) }

  mas.each do |i|
    blng = Belonging.neibr(i[0], i[1], lmbd)
    if blng[0] == 'E'
      print i[0], ' | ',  i[1], ' |        ERROR           |'
      puts
    else print i[0], ' | ',  i[1], ' |     ', blng[0].to_s.upcase[0],
          '    |     ', blng[1].to_s.upcase[0], '       |'
      puts
    end
  end
else
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
end
