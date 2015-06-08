class PhoneNumber
  def initialize(str)
    @str = str
  end

  attr_reader :str, :nums

  def number
    @num ||= phone_number
  end

  def area_code
    @code ||= number[0..2]
  end

  def to_s
    "(#{area_code}) #{number[3..5]}-#{number[6..-1]}"
  end

  private

  def phone_number
    return '0000000000' if bad_number?
    nums[0] = '' if trim_first?
    nums
  end

  def bad_number?
    !length_acceptable? || (length_is_eleven? && !first_is_one?)
  end

  def length_acceptable?
    l = raw_nums_length
    s = str.length
    s < 15 && l > 9 && l < 12
  end

  def trim_first?
    length_is_eleven? && first_is_one?
  end

  def length_is_eleven?
    @is_11 ||= raw_nums_length == 11
  end

  def first_is_one?
    @is_1 ||= raw_nums[0] == "1"
  end

  def raw_nums_length
    @len ||= raw_nums.length
  end

  def raw_nums
    @nums ||= str.split(//).select { |n| int_arr.include? n }.join
  end

  def int_arr
    (0..9).map(&:to_s)
  end
end
