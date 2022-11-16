# frozen_string_literal: true

require_relative 'array_worker'

# module includes functions for communicating
module Communication
  def self.main
    p 'Input array with spaces:'
    x = gets.chop.split(' ')
    p ArrayWorker.commun(x)
  end
end

Communication.main
