class Binary
  require 'pry'
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def to_decimal
    if /[a-z]|[2-9]/ =~ str
      0
    end
    arr = str.reverse.chars.map { |x| x.to_i }
    arr.each_with_index.map { |n, i| (2 ** i) * n }.inject(:+)
  end
end
