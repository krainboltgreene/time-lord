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

  def time_ago_in_words
    difference = time_difference self
    count = difference / unit_amount(unit_name(difference))
    unit = unit_name(difference) + ('s' if difference > 1)
    "#{count} #{unit} ago"
  end

  def time_difference time
    Time.now.to_i - time.to_i
  end

  private
  def unit_name difference
    'second'     if Second...Minute      === difference
    'minute'     if Minute...Hour        === difference
    'hour'       if Hour...Day           === difference
    'day'        if Day...Week           === difference
    'week'       if Week...Month         === difference
    'month'      if Month...Year         === difference
    'year'       if Year...Decade        === difference
    'decade'     if Decade...Century     === difference
    'century'    if Century...Millennium === difference
    'millennium' if Millennium...Eon     === difference
  end

  def unit_amount unit_name
    p unit_name
    Time.constants.map(&:to_s).map(&:downcase)
  end

  alias_method :ago_in_words, :time_ago_in_words
  alias_method :from_now_in_words, :time_ago_in_words

end
