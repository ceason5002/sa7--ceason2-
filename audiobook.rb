class Audiobook
  attr_reader :title, :author, :duration

  def initialize(title, author, duration)
    raise ArgumentError, "Title must be a non-empty string" unless title.is_a?(String) && !title.empty?
    raise ArgumentError, "Author must be a non-empty string" unless author.is_a?(String) && !author.empty?
    raise ArgumentError, "Duration must be a positive number" unless duration.is_a?(Numeric) && duration > 0

    @title = title
    @author = author
    @duration = duration.to_f
  end

  def to_s
    "#{@title} by #{@author} (Audiobook, #{@duration} hours)"
  end
end
