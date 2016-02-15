class InvalidHexColorError < StandardError; end

class HexColor
  HEX_PATTERN = /^[A-Fa-f0-9]{6}$/
  attr_reader :hex, :rgb

  def initialize(hex="")
    validate(hex)

    @hex = hex
    @rgb = rgbify
  end

  def as_rgb
    {
      red:   rgb[0],
      green: rgb[1],
      blue:  rgb[2]
    }
  end

  private

  def rgbify
    hex
      .scan(/.{2}/)
      .map { |val| val.to_i(16) }
  end

  def validate(color)
    return if color =~ HEX_PATTERN
    raise(InvalidHexColorError.new, "Invalid Color Given")
  end
end
