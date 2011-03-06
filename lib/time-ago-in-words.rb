require 'time'
class Time
  alias_method :time_ago_in_words, :ago_in_words
  alias_method :from_now_in_words, :ago_in_words
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
    a_year       = a_month   * 24
    a_olympiad   = a_year    * 4
    a_lustrum    = a_year    * 5
    a_decade     = a_lustrum * 2
    a_indiction  = a_lustrum * 3
    a_jubilee    = a_decade  * 5
    a_century    = a_jubilee * 2
    a_millennium = a_jubilee * 10
    if time_between <= a_minute
      unit = "second#{'s' unless time_between == 1}"
      "#{time_between} #{unit} ago"
    elsif time_between <= a_hour
      unit = "minute#{'s' unless time_between == 1}"
      "#{time_between / a_minute} #{unit} ago"
    elsif time_between <= a_day
      unit = "hour#{'s' unless time_between == 1}"
      "#{time_between / a_hour} #{unit} ago"
    elsif time_between <= a_week
      unit = "day#{'s' unless time_between == 1}"
      "#{time_between / a_day} #{unit} ago"
    elsif time_between <= a_month
      unit = "week#{'s' unless time_between == 1}"
      "#{time_between / a_week} #{unit} ago"
    elsif time_between <= a_year
      unit = "month#{'s' unless time_between == 1}"
      "#{time_between / a_month} #{unit} ago"
    elsif time_between <= a_decade
      unit = "year#{'s' unless time_between == 1}"
      "#{time_between / a_year} #{unit} ago"
    elsif time_between <= a_century
      unit = "decade#{'s' unless time_between == 1}"
      "#{time_between / a_decade} #{unit} ago"
    else
      unit = "millennium#{'s' unless time_between == 1}"
      "#{time_between / a_millennium} #{unit} ago"
    end
  end
end
