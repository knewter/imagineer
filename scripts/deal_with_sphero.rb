require 'socket'
require 'hornetseye_v4l2'
require 'hornetseye_xorg'
require 'hornetseye_rmagick'
require 'chunky_png'
include Hornetseye
require_relative '../lib/imagineer'

class TcpClient
  def initialize(port)
    @socket = TCPSocket.new 'localhost', port
    @image_file = "/tmp/test.png"
  end

  def navigate
    while true do
      get_image_from_webcam
      @classifier = Imagineer::Classifier.new(@image_file)
      if sphero_is_on_left?
        send_sphero_right
      else
        send_sphero_left
      end
    end
  end

  def get_image_from_webcam
    input = V4L2Input.new '/dev/video1'
    frame = input.read
    frame.to_type(UBYTE).to_ubytergb.save_ubytergb @image_file
  end

  def send_sphero_left
    puts "go left"
    @socket.puts "l\r\n"
  end

  def send_sphero_right
    puts "go right"
    @socket.puts "r\r\n"
  end

  def sphero_is_on_left?
    @classifier.brightest_pixel_is_on_left?
  end
end

c = TcpClient.new(9013)
c.navigate
