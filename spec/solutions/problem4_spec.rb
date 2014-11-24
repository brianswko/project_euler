require 'spec_helper'

module ProjectEuler
  describe Problem4 do
    describe '.largest_palindrome_product_3_digits' do
      let(:largest_palindrome_product_3_digits) { 906609 }

      it 'outputs the correct value' do
        expect(
          Problem4.largest_palindrome_product_3_digits
        ).to eq(largest_palindrome_product_3_digits)
      end
    end
  end
end
