require_relative "media"
require_relative "exportable_mixin"

class Book < Media
  include Exportable
  attr_reader :pages

  def initialize(title, author, pages)
    super(title, author)
    raise ArgumentError, "Pages must be a positive integer" unless pages.is_a?(Integer) && pages > 0
    @pages = pages
  end

  def read_pages(n)
    raise ArgumentError, "Pages must be positive" unless n.is_a?(Integer) && n > 0
    raise ArgumentError, "Cannot exceed total pages" if @progress + n > @pages
    @progress += n
  end

  def completed?
    @progress == @pages
  end

  def to_h
    {
      type: "book",
      title: @title,
      author: @author,
      pages: @pages,
      progress: @progress,
      completed: completed?
    }
  end

  def to_s
    "#{@title} by #{@author} (Book, #{@pages} pages)"
  end
end

