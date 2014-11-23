module ProjectEuler
  class FibonacciNumbers
    class << self
      def up_to_exclusive(upper_bound)
        return []  if upper_bound <= 0
        return [0] if upper_bound == 1

        fibonacci_seq = [0, 1]
        while (fib = fibonacci_seq.last(2).reduce(&:+)) < upper_bound do
          fibonacci_seq << fib
        end
        fibonacci_seq
      end
    end
  end
end
