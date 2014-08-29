require 'date'
require 'time'

class Gigasecond
  year = 1990
  month = 06
  day = 16
  def self.from(birthdate)

    bday_time = birthdate.to_time

    gigasecond_anniversary_time = bday_time + 10**9

    return gigasecond_anniversary_time.to_date
  end
end
