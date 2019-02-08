require "spec_helper"

RSpec.describe Grid do
  let(:array) { [1, 2, 3, 4, 5] }
  subject { described_class.new(numbers: array) }

  describe "#initialize" do

    it "assigns the array of numbers that will compromise the grid" do
      expect(subject.numbers).to match_array(array)
    end
  end

  describe "#content" do
    it "computes & populates the grid values by multiplying  each x and y" do
      items = subject.content

      expect(items[3][3]).to eq(16)
      expect(items[2][2]).to eq(9)
      expect(items[4][4]).to eq(25)
    end
  end
end
