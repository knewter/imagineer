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

    def brightest_pixel_is_on_left?
      brightest_pixel.x < (width/2)
    end

    def brightest_pixel_is_on_right?
      !brightest_pixel_is_on_left?
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
