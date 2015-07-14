module Enumerable
  def keep(&block)
    self.map { |x| block === x ? x : nil }.compact
  end

  def discard(&block)
    self - self.keep(&block)
  end
end
