require 'project_euler/fibonacci_numbers'

module ProjectEuler
  class Problem2
    class << self
      def sum_even_fibonaccis(upper_bound)
        fibonaccis = FibonacciNumbers.up_to_exclusive(upper_bound)
        even_fibonaccis = fibonaccis.select { |n| n % 2 == 0 }
        even_fibonaccis.reduce(&:+)
      end
    end
  end
end
