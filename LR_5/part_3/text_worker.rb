# frozen_string_literal: true

# class sorts the lines
class TextWorker
  def self.sorting(mas)
    return if mas.nil?

    mas_sorted = []
    mas.each { |str_i| mas_sorted.push(str_i.sort_by { |i| i.length }.reverse) }
    mas_sorted
  end
end
