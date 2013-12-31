module Imagineer
  class Classifier
    def initialize(file)
      @image = ChunkyPNG::Image.from_file(file)
    end

    # Returns the first, brightest pixel from the top right
    def brightest_pixel
      index = @image.pixels.index(brightest_value)
      x = index % width
      y = index / width
      Coordinate.new(x, y)
    end

    def brightest_value
      @image.pixels.max
    end

    def width
      @image.width
    end

    def height
      @image.height
    end
  end
end
