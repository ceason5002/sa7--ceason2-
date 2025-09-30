require_relative "media"

class Audiobook < Media
  attr_reader :duration

  def initialize(title, author, duration)
    super(title, author)
    raise ArgumentError, "Duration must be a positive number" unless duration.is_a?(Numeric) && duration > 0
    @duration = duration.to_f
  end

  def to_s
    "#{@title} by #{@author} (Audiobook, #{@duration} hours)"
  end
end
