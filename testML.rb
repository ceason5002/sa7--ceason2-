require_relative "media_library"
require_relative "book"
require_relative "audiobook"

puts "=== Step 4 Tests ==="
lib = MediaLibrary.new
b = Book.new("Clean Code", "Robert Martin", 464)
a = Audiobook.new("Ruby Programming", "Jane Smith", 8.5)

lib.add_item(b)
lib.add_item(a)

puts "Total: #{lib.total_items}"              # out: 2
puts "Books: #{lib.count_books}"              # out: 1
puts "Audiobooks: #{lib.count_audiobooks}"    # outt: 1

puts "Books in library:"
lib.items_by_type(Book).each { |item| puts item }
