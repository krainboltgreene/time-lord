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
    when 0...Minute
      :second
    when Minute...Hour
      :minute
    when Hour...Day
      :hour
    when Day...Week
      :day
    when Week...Month
      :week
    when Month...Year
      :month
    when Year...Decade
      :year
    when Decade..Century
      :decade
    end
  end

  def plural?(unit_difference)
    unit_difference > 1
  end
end
