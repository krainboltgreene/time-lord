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
  alias_method :after, :from
  alias_method :from_now, :from

  def before(timestamp = Time.now)
    time_convert(timestamp - self)
  end
  alias_method :ago, :before
  alias_method :to_now, :before

  def positive?
    self > 0
  end

  def negative?
    self < 0
  end

  private

  def time_convert(timestamp)
    TimeLord::Time.new(timestamp).period
  end
end
