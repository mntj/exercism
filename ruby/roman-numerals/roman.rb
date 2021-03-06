class Fixnum
  def to_roman
    roman_numerals = {
      1000 => 'M',
      900  => 'CM',
      500  => 'D',
      400  => 'CD',
      100  => 'C',
      90   => 'XC',
      50   => 'L',
      40   => 'XL',
      10   => 'X',
      9    => 'IX',
      5    => 'V',
      4    => 'IV',
      1    => 'I'
    }
    num = self
    numeral_string = ""
      while num > 0
        roman_numerals.each do |int, numeral|
          if num >= int
            numeral_string += numeral
            num -= int
            break
          end
        end
      end
    return numeral_string
  end
end
