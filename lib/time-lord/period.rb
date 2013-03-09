module TimeLord
  # The TimeLord::Period class handles the concept of two points in time and
  # their relation to each other as a range. Conceptually it should duck type
  # the Range class
  class Period
    attr_writer :beginning, :ending

    def initialize(beginning, ending)
      self.beginning = beginning
      self.ending = ending
    end

    # One of the big values of this class is turning into a string that best
    # describes the period. This could feasibly be in another class however.
    def to_words
      "#{value} #{unit} #{tense}"
    end
    alias_method :in_words, :to_words

    # We will often want the difference between the two points both inside
    # and outside the class (see alias).
    def difference
      beginning - ending
    end
    alias_method :to_i, :difference

    # This method turns our period into either the beginning value or the
    # ending value, based on if the difference is negative or positive.
    def to_time
      if difference < 0 then @beginning else @ending end
    end

    # Because the class duck-types the Range class it needs to be able to turn
    # into a Range.
    def to_range
      beginning..ending
    end

    # We want the absolute value of the timestamp if we're going to be reading
    # the `@beginning` data. This is so we can do easy math elsewhere, without
    # peppering the code with `*#to_i()`.
    def beginning
      @beginning.to_i
    end

    def ending
      @ending.to_i
    end

    private

    def value
      Scale.new(difference).to_value
    end

    def unit
      Scale.new(difference).to_unit
    end

    def tense
      if difference < 0 then "ago" else "from now" end
    end
  end
end
