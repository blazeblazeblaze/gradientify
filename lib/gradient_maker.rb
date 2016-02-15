require_relative 'hex_color'
require_relative 'gradient'

class GradientMaker
  attr_reader :from, :to, :steps, :gradients

  def initialize(attrs={})
    @from      = attrs[:from]
    @to        = attrs[:to]
    @steps     = attrs[:steps]
    @gradients = []
  end

  def make
    generated  = gradient.generate
    @gradients = generated.map(&:hex)
  end

  private

  def gradient
    Gradient.new(gradient_from, gradient_to, steps.to_i)
  end

  def gradient_from
    HexColor.new(from).as_rgb
  end

  def gradient_to
    HexColor.new(to).as_rgb
  end
end

