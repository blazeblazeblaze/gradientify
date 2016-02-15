require 'spec_helper'

describe HexColor do
  subject         { described_class.new(hex_color) }
  let(:hex_color) { "FF334C" }
  let(:hashified) { { red: 255, green: 51, blue: 76 } }

  describe ".new" do
    context "invalid hex" do
      it "raises error if hex is invalid" do
        expect{
          described_class.new
        }.to raise_error(InvalidHexColorError)
      end
    end

    context "valid hex" do
      it "formats color as rgb value" do
        expect(
          subject.rgb
        ).to eq [255, 51, 76]
      end
    end
  end

  describe "#as_rgb" do
    it "adapts rgb to hash" do
      expect(
        subject.as_rgb
      ).to eq hashified
    end
  end
end

