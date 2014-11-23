module ProjectEuler
  class Problem1
    class << self
      def sum_multiples_of_3_or_5(upper_bound)
        sum = 0
        for n in 1...upper_bound do
          if n % 3 == 0 || n % 5 == 0
            sum += n
          end
        end
        sum
      end
    end
  end
end
