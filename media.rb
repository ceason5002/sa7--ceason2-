class Media
    attr_reader :title, :author

    def initialize(title, author)
        raise ArgumentError, "Title must be a non-empty string" unless title.is_a?(String) && !title.empty?
        raise ArgumentError, "Author must be a non-empty string" unless author.is_a?(String) && !author.empty?

        @title = title
        @author = author
 
    end
end