require "spec_helper"

RSpec.describe Ui do
  let(:grid) { double(:grid) }
  subject do
    described_class.new(grid: grid)
  end

  describe "#initialize" do
    it "assigns a grid" do
      expect(subject.grid).to eq(grid)
    end
  end 
end
