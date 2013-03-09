class Integer
  TimeLord::Units.constants.each do |constant|
    define_method constant.downcase do
      self * TimeLord::Units.const_get(constant)
    end
    alias_method "#{constant.downcase}s", constant.downcase
  end

  def from(timestamp = Time.now)
    time_convert(timestamp + self)
  end
  alias_method :from_now, :from

  def to(timestamp = Time.now)
    time_convert(timestamp - self)
  end
  alias_method :ago, :to

  private

  def time_convert(timestamp)
    TimeLord::Time.new(timestamp).period
  end
end
