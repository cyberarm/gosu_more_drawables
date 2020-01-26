require "gosu"
require "gosu_more_drawables"

class DemoWindow < Gosu::Window
  def initialize
    super(500, 500, false)
  end

  def draw
    Gosu.draw_circle(250, 250, 200, 128, Gosu::Color.rgb(0, 200, 0))
    Gosu.draw_arc(250, 250, 200, 1.0, 128, 4, Gosu::Color.rgba(127, 64, 0, 100))
  end
end

DemoWindow.new.show