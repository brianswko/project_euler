module ProjectEuler
  class FactorFinder
    def initialize(input)
      @tracker = input
      @factors = [1]
    end

    def factors
      return @factors if @tracker <= 1
      while @tracker != (@tracker = find_next_factor(@tracker)); end
      @factors << @tracker.to_i
      @factors.uniq
    end

    private

    def find_next_factor(remaining)
      for i in 2..Math.sqrt(remaining)
        if (divided = remaining.fdiv(i)) == divided.to_i
          @factors << i
          return divided
        end
      end
      remaining
    end
  end
end
