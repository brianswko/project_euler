require 'spec_helper'

module ProjectEuler
  describe Problem1 do
    describe '.sum_multiples_of_3_or_5' do
      let(:upper_bound)       { 1000 }
      let(:sum_multiples_3_5) { 233168 }

      it 'outputs the correct value' do
        expect(
          Problem1.sum_multiples_of_3_or_5(upper_bound)
        ).to eq(sum_multiples_3_5)
      end
    end
  end
end
