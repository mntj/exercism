require 'prime'
class Raindrops
  def self.convert(num)
    return num.to_s if num < 2
    i = 2
    quotient = num
    prime_factors = []

    until prime_factors.inject(:*) === num do
      if quotient % i === 0 && i.prime?
        prime_factors << i
        quotient /= i
      else
        i += 1
      end
    end

    rain_drops = []
    prime_factors.each do |x|
      if x == 3 || x == 5 || x == 7
        rain_drops << x
      end
    end
    return num.to_s if rain_drops.size == 0

    rain_drops.uniq! if rain_drops.size > 1
    rain_drops.each_with_index do |x,i|
      case x
      when 3
        rain_drops[i] = 'Pling'
      when 5
        rain_drops[i] = 'Plang'
      when 7
        rain_drops[i] = 'Plong'
      end
    end
    rain_drops.join
  end
end
