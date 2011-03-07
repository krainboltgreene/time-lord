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
  Eon        = 1.0/0
end

class Time
  def time_ago_in_words
    time_difference = Time.now.to_i - self.to_i
    unit = get_unit(time_difference)
    unit_difference = time_difference / Units.const_get(unit.capitalize)

    unit = unit.to_s.downcase + ('s' if plural?(time_difference))

    "#{unit_difference} #{unit} ago"
  end

  private
  def get_unit(time_difference)

    constants = Units.constants

    unit = constants[0]
    i = 0
    for i in 0...constants.length
      unit = constants[i]
      if (Units.const_get(constants[i])...Units.const_get(constants[i + 1])) === time_difference
        break
      end
      i += 1
    end

    return unit
  end

  def plural?(unit_difference)
    unit_difference > 1
  end
end
