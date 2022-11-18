# frozen_string_literal: true

require_relative 'line'

print 'Введите координаты точки A: '
a = gets.split(' ')

print 'Введите координаты точки B: '
b = gets.split(' ')

print 'Введите толщину  линии  AB: '
w = gets.chop.to_f

line_class_parent = Line.new(a[0], a[1], b[0], b[1])
line_class_child  = LineChild.new(a[0], a[1], b[0], b[1], w)

print 'Введите координаты точки C: '
c = gets.split(' ')

puts "Принадлежность точки C тонкой прямой  : #{line_class_parent.check_belonging(c[0].to_f, c[1].to_f).to_s.upcase}"
puts "Принадлежность точки C толстой прямой : #{line_class_child.check_belonging(c[0].to_f, c[1].to_f).to_s.upcase}"
