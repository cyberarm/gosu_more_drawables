module Gosu
  def self.draw_circle(x, y, z, radius, color = Gosu::Color::WHITE, step_size = 36)
    step_size = (360.0/step_size).floor

    0.step(359, step_size) do |angle|
      angle2 = angle + step_size

      point_lx = x + Gosu.offset_x(angle, radius)
      point_ly = y + Gosu.offset_y(angle, radius)
      point_rx = x + Gosu.offset_x(angle2, radius)
      point_ry = y + Gosu.offset_y(angle2, radius)

      Gosu.draw_triangle(
        point_lx, point_ly, color,
	      point_rx, point_ry, color,
	      x, y, color, z
      )
    end
  end
end