require 'pry'
class Series
  def initialize(nums)
    @nums = nums
  end

  attr_reader :nums

  def slices(n)
    raise ArgumentError if n > nums.length

    nums.split(//).map(&:to_i).combination(n).to_a.uniq.select do |series|
      nums.include? series.join
    end
  end
end
