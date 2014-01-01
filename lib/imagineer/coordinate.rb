module Imagineer
  class Coordinate
    attr_reader :x, :y
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
