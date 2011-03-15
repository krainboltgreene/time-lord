require 'time'

class Time
  Second     = 1
  Minute     = Second  * 60
  Hour       = Minute  * 60
  Day        = Hour    * 24
  Week       = Day     * 7
  Fortnight  = Week    * 2
  Month      = Week    * 4
  Quarter    = Month   * 3
  Year       = Month   * 12
  Olympiad   = Year    * 4
  Lustrum    = Year    * 5
  Decade     = Year    * 10
  Indiction  = Year    * 15
  Jubilee    = Decade  * 5
  Century    = Decade  * 10
  Millennium = Century * 10
  Eon        = 1.0/0
  def ago_in_words
    time = self
    # Find the time difference between the time provided and the current time.
    difference = get_time_difference_from time
    
    return "just now" if difference < 1

    # Find the smallest unit name of the time difference.
    name = get_unit_name_from difference
    # Find the smallest unit amount of the time difference.
    amount = get_unit_amount_from difference
    # Find then number of units for the time difference.
    count = get_unit_count_from difference, amount
    # Determine if unit name needs pluralization.
    unit = name
    unit += "s" if count != 1

    # Print the remaining string.
    "#{count} #{unit} ago"
  end

  private
  def get_time_difference_from time
    Time.now.to_i - time.to_i
  end
  def get_unit_count_from difference, amount
    difference / amount
  end
  def get_unit_name_from difference
    case difference
      when Second...Minute
        "second"
      when Minute...Hour
        "minute"
      when Hour...Day
        "hour"
      when Day...Week
        "day"
      when Week...Month
        "week"
      when Month...Year
        "month"
      when Year..Decade
        "year"
      when Decade...Century
        "decade"
      when Century...Millennium
        "century"
      when Millennium...Eon
        "millennium"
      else
        "eon"
    end
  end
  def get_unit_amount_from difference
    case difference
      when Second...Minute
        Second
      when Minute...Hour
        Minute
      when Hour...Day
        Hour
      when Day...Week
        Day
      when Week...Month
        Week
      when Month...Year
        Month
      when Year..Decade
        Year
      when Decade...Century
        Decade
      when Century...Millennium
        Century
      when Millennium...Eon
        Millennium
      else
        Eon
    end
  end
  alias_method :time_ago_in_words, :ago_in_words
end
