require 'spec_helper'

describe RgbColor do
  subject         { described_class.new(rgb_color) }
  let(:rgb_color) { [255, 51, 76] }
  let(:haxified)  { "FF334C" }

  describe ".new" do
    context "invalid rgb" do
      it "raises error" do
        expect{
          described_class.new
        }.to raise_error(InvalidRGBColorError)
      end
    end

    context "valid rgb" do
      it "formats color as hex value" do
        expect(
          subject.hex
        ).to eq haxified
      end
    end
  end
end

