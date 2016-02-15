require "spec_helper"

describe Gradient do
  let(:from)  { { red: 255, green: 51, blue: 79  } }
  let(:to)    { { red: 216, green: 255, blue: 26 } }
  let(:steps) { 10 }

  subject { described_class.new(from, to, steps) }

  describe "#generate" do
    before { subject.generate }

    it "returns an array of 10" do
      expect(
        subject.results.count
      ).to eq steps
    end

    it "returns array of RgbColor instances" do
      expect(
        subject.results[0]
      ).to be_an_instance_of(RgbColor)
    end
  end
end
