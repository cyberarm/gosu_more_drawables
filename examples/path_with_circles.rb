require "gosu"
require "gosu_more_drawables"

class DemoWindow < Gosu::Window
  def initialize
    super(500, 500, false)

    @nodes = []
  end

  def draw
    sine = Math.sin(Gosu.milliseconds / 1000.0)
    c = (255 * sine).to_i.clamp(10, 255)
    color = Gosu::Color.rgb(c, 255, c / 2)

    Gosu.draw_path(@nodes, color)

    @nodes.each do |node|
      Gosu.draw_circle(node.x, node.y, 4, 4, color)
    end
  end

  def update
    x = 20
    @nodes.clear
    20.times do |i|
      @nodes << Gosu::PathNode.new(x + i, Math.cos(Gosu.milliseconds / 100.0 + i.to_f) * 10 + self.height / 2)
      x += 20
    end
  end
end

DemoWindow.new.show
