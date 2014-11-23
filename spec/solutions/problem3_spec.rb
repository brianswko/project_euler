require 'spec_helper'

# More comprehensive specs for this problem in FactorFinder
module ProjectEuler
  describe Problem3 do
    describe '.largest_prime_factor' do
      let(:input)                { 600_851_475_143 }
      let(:largest_prime_factor) { 6857 }

      it 'outputs the correct value' do
        expect(
          Problem3.largest_prime_factor(input)
        ).to eq(largest_prime_factor)
      end
    end
  end
end
