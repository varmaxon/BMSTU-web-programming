# frozen_string_literal: true

# class works with line options
class Line
  def initialize(krd_x1, krd_y1, krd_x2, krd_y2)
    @krd_x1 = krd_x1.to_f
    @krd_y1 = krd_y1.to_f
    @krd_x2 = krd_x2.to_f
    @krd_y2 = krd_y2.to_f
  end

  def print_options
    puts 'Координаты двух точек:', "A(#{@krd_x1}, #{@krd_y1}), B(#{@krd_x2}, #{@krd_y2})"
  end

  def check_belonging(x_new, y_new)
    (x_new - @krd_x1) / (@krd_x2 - @krd_x1) == (y_new - @krd_y1) / (@krd_y2 - @krd_y1)
  end
end

# class works with line options (+ width)
class LineChild < Line
  include Math
  def initialize(krd_x1, krd_y1, krd_x2, krd_y2, width)
    super(krd_x1, krd_y1, krd_x2, krd_y2)
    @width = width.to_f
  end

  def print_options
    puts 'Координаты двух точек:', "A(#{@krd_x1}, #{@krd_y1}), B(#{@krd_x2}, #{@krd_y2})"
    puts "Толщина: #{@width}"
  end

  def check_belonging(x_new, y_new)
    dx = @krd_x2 - @krd_x1
    dy = @krd_y2 - @krd_y1

    k = dy / dx

    num_b1 = @krd_y1 - k * @krd_x1

    h = ((@width / 2) * Math.sqrt(dx**2 + dy**2)) / dx

    (y_new <= k * x_new + num_b1 + h) && (y_new >= k * x_new + num_b1 - h)
  end
end
