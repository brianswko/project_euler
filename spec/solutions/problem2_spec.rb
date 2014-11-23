require 'spec_helper'

module ProjectEuler
  describe Problem2 do
    describe '.sum_even_fibonaccis' do
      let(:input_upper_bound)   { 4_000_000 }
      let(:sum_even_fibonaccis) { 4613732 }

      it 'outputs the correct value' do
        expect(
          Problem2.sum_even_fibonaccis(input_upper_bound)
        ).to eq(sum_even_fibonaccis)
      end
    end
  end
end
