class Time
  def ago
    TimeLord::Time.new(self).period
  end
end
