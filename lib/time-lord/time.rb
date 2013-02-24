module TimeLord
  class Time
    attr_accessor :moment

    def initialize(moment)
      self.moment = moment
    end

    def period
      Period.new(moment, ::Time.now)
    end
  end
end
