# frozen_string_literal: true

# class rewrites information
class Rewriting
  def self.read_file(file)
    file.readlines
  end

  def self.text_operation(data)
    result = []
    data.each_index do |i_str|
      if i_str != data.length - 1
        result << data[i_str].chop.reverse
      else
        result << data[i_str].reverse
      end
    end
    result
  end

  def self.setting(file, data)
    data.each { |item| file.puts item }
  end
end