require 'prime'

class PrimeFactors
  def self.for(n)
    factors = []
    b = n

    2.upto(n) do |i|
      until b % i != 0
        if n % i == 0 && i.prime?
          factors << i
          b /= i
        end
      end
      break if b == 1
    end

    factors
  end
end
