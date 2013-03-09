module TimeLord
  class Scale
    include Units

    attr_writer :absolute

    def initialize(value)
      self.absolute = value
    end

    def to_value
      timemap.first
    end

    def to_unit
      timemap.last
    end

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
