module TimeLord
  # The timelord units module contains all the basic conversions from seconds
  # to any other unit of basic time.
  module Units
    # Our basic unit of measurement is the second, because that's what most
    # people expect.
    SECOND     = 1
    MINUTE     = SECOND  * 60
    HOUR       = MINUTE  * 60
    DAY        = HOUR    * 24
    WEEK       = DAY     * 7

    # Everything after this is a little tricky as calender months can actually
    # be entirely different sizes from other months. This attempts to average it
    # out, because a standard month is 4 weeks long.
    MONTH      = WEEK    * 4
    # The same goes for years, so we actually do it by the standard calendar
    # year length.
    YEAR       = DAY * 365
  end
end
