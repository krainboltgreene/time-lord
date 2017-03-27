module TimeLord
  # The TimeLord::Time class understands how to take a ::Time object and turn
  # it into a Period object. It's assumed the object you pass it will be the
  # beginning of any period.
  class Time
    attr_accessor :moment

    def initialize(moment)
      self.moment = moment
    end

    # You may optionally pass in another ::Time object to act as the ending of
    # a Time Period. The default is of course the current time, for sake of
    # simplicity.
    def period(ending = ::Time.now)
      Period.new(moment, ending)
    end
  end
end
