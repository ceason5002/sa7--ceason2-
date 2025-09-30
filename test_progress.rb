require_relative "book"
require_relative "audiobook"

puts "=== Step 5 Tests ==="
b = Book.new("Clean Code", "Robert Martin", 464)
a = Audiobook.new("Ruby Programming", "Jane Smith", 8.5)

puts b.to_s
puts a.to_s

b.read_pages(100)
puts b.to_s  # out: progress 100
b.read_pages(364)
puts b.to_s  # out: completed

a.listen(4.5)
puts a.to_s  # out: progress 4.5
a.listen(4.0)
puts a.to_s  # out: completed
