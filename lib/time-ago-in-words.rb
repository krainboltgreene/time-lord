require 'time'
class Time
  def ago_in_words
    time = self
    time_now = Time.now.to_i
    time_then = time.to_i
    time_between = time_now - time_then
    a_second     = 1
    a_minute     = a_second  * 60
    a_hour       = a_minute  * 60
    a_day        = a_hour    * 24
    a_week       = a_day     * 7
    a_fortnight  = a_day     * 14
    a_month      = a_week    * 4
    a_quarter    = a_month   * 3
    a_year       = a_month   * 12
    a_olympiad   = a_year    * 4
    a_lustrum    = a_year    * 5
    a_decade     = a_lustrum * 2
    a_indiction  = a_lustrum * 3
    a_jubilee    = a_decade  * 5
    a_century    = a_jubilee * 2
    a_millennium = a_jubilee * 10
    if time_between <= a_minute
      count = time_between
      unit = "second#{'s' unless count == 1}"
      "#{count} #{unit} ago"
    elsif time_between <= a_hour
      count = time_between / a_minute
      unit = "minute#{'s' unless count == 1}"
      "#{count} #{unit} ago"
    elsif time_between <= a_day
      count = time_between / a_hour
      unit = "hour#{'s' unless count == 1}"
      "#{count} #{unit} ago"
    elsif time_between <= a_week
      count = time_between / a_between
      unit = "day#{'s' unless count == 1}"
      "#{count} #{unit} ago"
    elsif time_between <= a_month
      count = time_between / a_week
      unit = "week#{'s' unless count == 1}"
      "#{count} #{unit} ago"
    elsif time_between <= a_year
      count = time_between / a_month
      unit = "month#{'s' unless count == 1}"
      "#{count} #{unit} ago"
    elsif time_between <= a_decade
      count = time_between / a_year
      unit = "year#{'s' unless count == 1}"
      "#{count} #{unit} ago"
    elsif time_between <= a_century
      count = time_between / a_decade
      unit = "decade#{'s' unless count == 1}"
      "#{count} #{unit} ago"
    else
      count = time_between / a_millennium
      unit = "millennium#{'s' unless count == 1}"
      "#{count} #{unit} ago"
    end
  end
  alias_method :time_ago_in_words, :ago_in_words
  alias_method :from_now_in_words, :ago_in_words
end
