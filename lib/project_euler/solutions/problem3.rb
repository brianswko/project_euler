require 'project_euler/factor_finder'

module ProjectEuler
  class Problem3
    class << self
      def largest_prime_factor(input)
        FactorFinder.new(input).factors.last
      end
    end
  end
end
