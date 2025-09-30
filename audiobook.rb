require_relative "media"
require_relative "exportable_mixin"

class Audiobook < Media
  include Exportable
  attr_reader :duration

  def initialize(title, author, duration)
    super(title, author)
    raise ArgumentError, "Duration must be a positive number" unless duration.is_a?(Numeric) && duration > 0
    @duration = duration.to_f
  end

  def listen(hours)
    raise ArgumentError, "Hours must be positive" unless hours.is_a?(Numeric) && hours > 0
    raise ArgumentError, "Cannot exceed total duration" if @progress + hours > @duration
    @progress += hours
  end

  def completed?
    @progress == @duration
  end

  def to_h
    {
      type: "audiobook",
      title: @title,
      author: @author,
      duration: @duration,
      progress: @progress,
      completed: completed?
    }
  end

  def to_s
    "#{@title} by #{@author} (Audiobook, #{@duration} hours)"
  end
end
