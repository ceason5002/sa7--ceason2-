require_relative "media"

class Book < Media
  attr_reader :pages

  def initialize(title, author, pages)
    super(title, author)
    raise ArgumentError, "Pages must be a positive integer" unless pages.is_a?(Integer) && pages > 0
    @pages = pages
  end

  def to_s
    "#{@title} by #{@author} (Book, #{@pages} pages)"
  end
end
