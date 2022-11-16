# frozen_string_literal: true

# class works with array
class ArrayWorker
  def self.commun(arr)
    return if arr.nil?

    arr.each_index do |item|
      arr[item] = arr[item].to_i
      arr.insert(item + 1, (arr[item])**2) if arr[item].to_i.negative?
    end
    arr
  end
end
