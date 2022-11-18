# frozen_string_literal: true

require_relative 'rewriting'
file = File.open('text/file_F.txt', 'r')
print info = Rewriting.read_file(file)
file.close

puts

file = File.open('text/file_G.txt', 'w')
Rewriting.setting(file, Rewriting.text_operation(info))
file.close
