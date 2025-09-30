require_relative "media_library"
require_relative "book"
require_relative "audiobook"

puts "=== Step 6 Tests ==="
lib = MediaLibrary.new
b = Book.new("Clean Code", "Robert Martin", 464)
a = Audiobook.new("Ruby Programming", "Jane Smith", 8.5)

lib.add_item(b)
lib.add_item(a)

b.read_pages(464)
puts b.to_json
puts a.to_json
puts lib.to_json
