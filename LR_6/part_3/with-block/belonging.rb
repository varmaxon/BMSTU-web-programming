# frozen_string_literal: true

# class calculates irrational number
class Belonging
  def self.neibr(crd_x, crd_y)
    return 'ERROR' if (crd_y < -1) || (crd_y > 1)

    yield crd_x, crd_y
  end
end
