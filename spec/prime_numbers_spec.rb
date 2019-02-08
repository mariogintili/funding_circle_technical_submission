RSpec.describe PrimeNumbers do
  subject { described_class.new }

  describe "#take" do
    it "returns an array with the first N prime numbers" do
      expect(subject.take(3)).to match_array([2, 3, 5])
      expect(subject.take(5)).to match_array([2, 3, 5, 7, 11])
      expect(subject.take(10)).to match_array([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end
  end
end
