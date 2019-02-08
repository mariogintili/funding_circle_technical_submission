require "spec_helper"

RSpec.describe Application do
  let(:valid_options) { ["--count", "10"] }
  let(:invalid_opions) { ["--ount", "derp"] }

  describe "#initialize" do
    subject { described_class.new(options: valid_options) }

    it "assigns options" do
      expect(subject.options).to eq(valid_options)
    end
  end

  describe "#validate" do
    context "valid options" do
      subject do
        described_class.new(options: valid_options)
      end

      it "does not error" do
        expect { subject.validate }.not_to raise_error
      end
    end

    context "invalid options" do
      subject do
        described_class.new(options: invalid_opions)
      end

      it "does error" do
        expect { subject.validate }.to raise_error(ArgumentError)
      end
    end
  end

  describe "build" do
    subject { described_class.new(options: valid_options) }
    it "assigns a ui containing a grid with the prime numbers of @number" do
      expect_any_instance_of(PrimeNumbers).to receive(:take).with(10)
      subject.validate
      subject.build
      expect(subject.ui).to be_a(Ui)
    end
  end
end
