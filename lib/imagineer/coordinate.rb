module Imagineer
  class Coordinate
    def initialize(x, y)
      @x = x
      @y = y
    end

    def ==(other)
      self.state == other.state
    end

    def state
      [@x, @y]
    end
  end
end
