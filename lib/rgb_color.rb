class InvalidRGBColorError < StandardError; end

class RgbColor
  attr_reader :hex, :rgb

  def initialize(rgb=[])
    validate(rgb)

    @rgb = rgb
    @hex = hexify
  end

  private

  def hexify
    rgb.map do |val|
      val.to_s(16)
    end.join.upcase
  end

  def validate(color)
    return if color.any? && color.all? { |c| c.between?(0, 255) }
    raise(InvalidRGBColorError.new, "Invalid Color Given")
  end
end

