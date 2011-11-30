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
    # Find the time difference between the time provided and the current time.
    difference = get_time_difference_from self

    # Catch less than 1 second differences.
    return "just now" if (-1...1) === difference

    name   = get_unit_name_from difference
    amount = get_unit_amount_from difference
    count  = get_unit_count_from(difference, amount).abs

    # Determine if unit name needs pluralization.
    name += "s" if count > 1

    # Return the remaining string.
    difference >= 0 ? "#{count} #{name} ago" : "in #{count} #{name}"
  end

  private

  def get_time_difference_from time
    Time.now.to_i - time.to_i
  end

  def get_unit_count_from difference, amount
    difference / amount
  end

  def get_unit_name_from difference
    case difference.abs
      when Second...Minute      then "second"
      when Minute...Hour        then "minute"
      when Hour...Day           then "hour"
      when Day...Week           then "day"
      when Week...Month         then "week"
      when Month...Year         then "month"
      when Year..Decade         then "year"
      when Decade...Century     then "decade"
      when Century...Millennium then "century"
      when Millennium...Eon     then "millennium"
    end
  end

  def get_unit_amount_from difference
    case difference.abs
      when Second...Minute      then Second
      when Minute...Hour        then Minute
      when Hour...Day           then Hour
      when Day...Week           then Day
      when Week...Month         then Week
      when Month...Year         then Month
      when Year..Decade         then Year
      when Decade...Century     then Decade
      when Century...Millennium then Century
      when Millennium...Eon     then Millennium
    end
  end

  alias_method :time_ago_in_words, :ago_in_words
  alias_method :distance_in_words, :ago_in_words
  alias_method :time_distance_in_words, :ago_in_words
end
