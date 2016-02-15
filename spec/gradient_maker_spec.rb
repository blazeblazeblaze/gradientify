require "spec_helper"

describe GradientMaker do
  let(:results) do
    [
      "FF334C", "FA4946", "F55F40", "F0753A",
      "EB8B34", "E6A12E", "E1B728", "DCCD22",
      "D7E31C", "D2F916"
    ]
  end

  let(:attrs) { { from: "FF334C", to: "D8FF1A", steps: 10 } }
  subject     { described_class.new(attrs) }

  describe "#make" do
    before { subject.make }

    it "returns same number of elements as steps" do
      expect(
        subject.gradients.count
      ).to eq attrs[:steps]
    end

    it "adapts gradients and returns hex values" do
      expect(
        subject.gradients
      ).to eq results
    end
  end
end

