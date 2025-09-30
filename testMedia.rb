require_relative "book"
require_relative "audiobook"

puts "=== Step 3 Tests ==="
b = Book.new("Clean Code", "Robert Martin", 464)
a = Audiobook.new("Ruby Programming", "Jane Smith", 8.5)

puts b.to_s
puts a.to_s