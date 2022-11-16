# frozen_string_literal: true

require_relative 'text_worker'

p 'Input lines amount:'
n = gets.to_i
mas_str = []
n.times do
  str = gets.chop
  str = str.split(' ')
  mas_str.append(str)
end

p TextWorker.sorting(mas_str)
