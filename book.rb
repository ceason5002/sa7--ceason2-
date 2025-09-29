class Book
    attr_reader: :title, :author, :pages

    def initialize(title,author, pages)
        raise ArgumentError,"Title must be  non-empty String" unless title.is_a(String) && !title.strip.empty?
        raise ArgumentError,"Author must be a non-empty String" unless author.is_a?(String) && !author.strip.empty?
        raise ArgumentError,"Pages must be a positive Integer"unless pages.is_a?(Integer) && pages > 0

        @title = title
        @author = author
        @pages = pages
    end

    def to_s
        "{title} by #{author} (Book, #{pages} pages)"
    end
end