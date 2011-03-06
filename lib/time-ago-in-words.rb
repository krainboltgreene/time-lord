require 'time'
module Units
  Second     = 1
  Minute     = Second  * 60
  Hour       = Minute  * 60
  Day        = Hour    * 24
  Week       = Day     * 7
  Month      = Week    * 4
  Year       = Day     * 365
  Decade     = Year    * 10
  Century    = Decade  * 10
  Millennium = Century * 10
end

class Time
  def time_ago_in_words
    time_difference = Time.now.to_i - self.to_i
    unit = get_unit(time_difference)
    unit_difference = time_difference / Units.const_get(unit.capitalize)

    unit = unit.to_s + ('s' if plural?(time_difference))

    "#{unit_difference} #{unit} ago"
  end

  private
  def get_unit(time_difference)

    case time_difference
    when 0...Units::Minute
      :second
    when Units::Minute...Units::Hour
      :minute
    when Units::Hour...Units::Day
      :hour
    when Units::Day...Units::Week
      :day
    when Units::Week...Units::Month
      :week
    when Units::Month...Units::Year
      :month
    when Units::Year...Units::Decade
      :year
    when Units::Decade..Units::Century
      :decade
    end
  end

  def plural?(unit_difference)
    unit_difference > 1
  end
end
