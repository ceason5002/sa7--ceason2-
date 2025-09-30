class Book
  attr_reader :title, :author, :pages

  def initialize(title, author, pages)
    raise ArgumentError, "Title must be a non-empty string" unless title.is_a?(String) && !title.empty?
    raise ArgumentError, "Author must be a non-empty string" unless author.is_a?(String) && !author.empty?
    raise ArgumentError, "Pages must be a positive integer" unless pages.is_a?(Integer) && pages > 0

    @title = title
    @author = author
    @pages = pages
  end

  def to_s
    "#{@title} by #{@author} (Book, #{@pages} pages)"
  end
end
