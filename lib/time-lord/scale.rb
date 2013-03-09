module TimeLord
  # We use the TimeLord::Scale class to handle turning a number of seconds into
  # an reasonable unit of time. For instance 60 seconds should really be denoted
  # as 1 minute. The same applies for 100 seconds, because it's not enough to
  # go over 120 seconds (or 2 minutes).
  class Scale
    include Units

    attr_writer :absolute

    def initialize(value)
      self.absolute = value
    end

    # Here we turn it into the lowest common unit of measurement. Example: 100
    # (seconds) turned into 1 (minute).
    def to_value
      timemap.first
    end

    # This method turns the value into a word that decribes the lowest common
    # unit of measurement. Example: 100 (seconds) turned into "minute" (1).
    def to_unit
      timemap.last
    end

    # While the class can be passed any value, we only care about the absolute
    # of that integer.
    def absolute
      @absolute.abs
    end

    private

    def timemap
      case absolute
      when SECOND...MINUTE then [absolute, pluralized_word("second", plurality?(absolute)) || "second"]
      when MINUTE...HOUR   then as(MINUTE, "minute")
      when HOUR...DAY      then as(HOUR, "hour")
      when DAY...WEEK      then as(DAY, "day")
      when WEEK...MONTH    then as(WEEK, "week")
      when MONTH...YEAR    then as(MONTH, "month")
      else                      as(YEAR, "year")
      end
    end

    def as(unit, word)
      [count(unit), pluralized_word(word, plurality?(count(unit))) || word]
    end

    def count(unit)
      absolute / unit
    end

    def pluralized_word(word, plural)
      word += "s" if plural
    end

    def plurality?(count)
      count > 1 || count.zero?
    end
  end
end
