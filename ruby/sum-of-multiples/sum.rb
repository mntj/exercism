class SumOfMultiples
  def initialize(*base_multiples)
    @base_multiples = base_multiples
  end

  def self.base_multiples
    @base_multiples ||= [3, 5]
  end

  def base_multiples
    @base_multiples ||= [3, 5]
  end

  def self.to(limit)
    return 0 if limit == 1

    multiples = []
    base_multiples.each do |bm|
      (1...limit).each { |n| multiples << n if n % bm == 0 }
    end

    multiples.uniq.inject(:+)
  end

  def to(limit)
    return 0 if limit == 1

    multiples = []
    base_multiples.each do |bm|
      (1...limit).each { |n| multiples << n if n % bm == 0 }
    end

    multiples.uniq.inject(:+)
  end
end
