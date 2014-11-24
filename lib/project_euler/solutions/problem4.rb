module ProjectEuler
  class Problem4
    class << self
      def largest_palindrome_product_3_digits
        palindrome = 999 * 999 + 1
        while (palindrome = largest_palindrome_less_than(palindrome)) != 0
          lower_bound = palindrome / 999
          (lower_bound..999).each do |divisor|
            next if palindrome % divisor != 0
            return palindrome if palindrome / divisor <= 999
          end
        end
      end

      private

      def largest_palindrome_less_than(upper)
        upper -= 1
        largest_palindrome_less_than_equal(upper)
      end

      # TODO fix this ugly crap. if you ever feel like it. yayy hax
      def largest_palindrome_less_than_equal(upper)
        return 0 if upper <= 0
        digits = to_digits(upper)
        dlength_half = (digits.length - 1).fdiv(2)
        lower_center_index = dlength_half.floor
        upper_center_index = dlength_half.ceil
        if digits[lower_center_index] < digits[upper_center_index]
          return flip_copy_first_half(digits)
        elsif digits[lower_center_index] > digits[upper_center_index]
          remainder = digits.last(digits.length / 2).join.to_i
          return largest_palindrome_less_than_equal(upper - (remainder + 1))
        else
          first_half_r = digits.first(dlength_half.floor).reverse.join.to_i
          second_half = digits.last(dlength_half.floor).join.to_i
          return upper if first_half_r == second_half
          if first_half_r < second_half
            return flip_copy_first_half(digits)
          else
            remainder = digits.last(dlength_half.floor).join.to_i
            return largest_palindrome_less_than_equal(upper - (remainder + 1))
          end
        end
      end 

      def flip_copy_first_half(digits)
        for i in 0..(digits.length - 1).fdiv(2).floor
          digits[digits.length - 1 - i] = digits[i]
        end
        digits.join.to_i
      end

      def to_digits(number)
        number = number.abs
        number.to_s.chars.map(&:to_i)
      end
    end
  end
end
