# frozen_string_literal: true

# class calculates irrational number
class Belonging
  def self.neibr(crd_x, crd_y, lmbd = nil)
    return 'ERROR' if (crd_y < -1) || (crd_y > 1)
    if block_given?
      yield crd_x, crd_y
    else
      lmbd.call(crd_x, crd_y)
    end
  end
end
