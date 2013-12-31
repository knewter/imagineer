require 'rubygems'
require 'hornetseye_v4l2'
require 'hornetseye_rmagick'

include Hornetseye
input = V4L2Input.new '/dev/video1'
img.to_ubytergb.save_ubytergb 'test.png'
