require_relative '../spec_helper'
require 'chunky_png'

include Imagineer

describe Classifier do
  let(:image_file){ "./spec/images/white_dot_on_black.png" }
  subject{ described_class.new(image_file) }

  it "knows where the brightest pixel is" do
    expect(subject.brightest_pixel).to eq(Coordinate.new(83,67))
  end
end
