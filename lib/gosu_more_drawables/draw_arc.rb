module Gosu
def self.draw_arc(x, y, z, radius, percentage = 1.0, segments = nil, thickness = 4, color = Gosu::Color::WHITE)
    segments ||= 128

    segments = 360.0 / segments

    return if percentage == 0.0

    0.step((359 * percentage), segments) do |angle|
      angle2 = angle + segments

      point_a_left_x = x + Gosu.offset_x(angle, radius - thickness)
      point_a_left_y = y + Gosu.offset_y(angle, radius - thickness)

      point_a_right_x = x + Gosu.offset_x(angle2, radius - thickness)
      point_a_right_y = y + Gosu.offset_y(angle2, radius - thickness)

      point_b_left_x = x + Gosu.offset_x(angle, radius)
      point_b_left_y = y + Gosu.offset_y(angle, radius)

      point_b_right_x = x + Gosu.offset_x(angle2, radius)
      point_b_right_y = y + Gosu.offset_y(angle2, radius)

      if color.is_a?(Array)
        Gosu.draw_quad(
          point_a_left_x, point_a_left_y, color.first,
          point_b_left_x, point_b_left_y, color.last,
          point_a_right_x, point_a_right_y, color.first,
          point_b_right_x, point_b_right_y, color.last
        )
      elsif color.is_a?(Hash)
        start_color = color[:from]
        end_color = color[:to]

        color_a = Gosu::Color.rgba(
          (end_color.red - start_color.red) * (angle / 360.0) + start_color.red,
          (end_color.green - start_color.green) * (angle / 360.0) + start_color.green,
          (end_color.blue - start_color.blue) * (angle / 360.0) + start_color.blue,
          (end_color.alpha - start_color.alpha) * (angle / 360.0) + start_color.alpha,
        )
        color_b = Gosu::Color.rgba(
          (end_color.red - start_color.red) * (angle2 / 360.0) + start_color.red,
          (end_color.green - start_color.green) * (angle2 / 360.0) + start_color.green,
          (end_color.blue - start_color.blue) * (angle2 / 360.0) + start_color.blue,
          (end_color.alpha - start_color.alpha) * (angle2 / 360.0) + start_color.alpha,
        )

        Gosu.draw_quad(
          point_a_left_x, point_a_left_y, color_a,
          point_b_left_x, point_b_left_y, color_a,
          point_a_right_x, point_a_right_y, color_b,
          point_b_right_x, point_b_right_y, color_b
        )
      else
        Gosu.draw_quad(
          point_a_left_x, point_a_left_y, color,
          point_b_left_x, point_b_left_y, color,
          point_a_right_x, point_a_right_y, color,
          point_b_right_x, point_b_right_y, color
        )
      end
    end
  end
end