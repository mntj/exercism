class Trinary
  def initialize(tri_str)
    @tri_str = tri_str
  end

  attr_reader :tri_str

  def to_decimal
    count = 0

    tri_str.split(//).reverse.each_with_index do |n, i|
      count += n.to_i * (3 ** i)
    end

    count
  end
end
