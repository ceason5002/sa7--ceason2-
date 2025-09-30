require_relative "book"

puts "=== Step 1 Tests ==="
# Success case
book = Book.new("Clean Code", "Robert Martin", 464)
puts book.to_s  

#failure cases
begin
  Book.new("", "Robert Martin", 464)
rescue ArgumentError => e
  puts e.message 
end 

begin
  Book.new("Clean Code", "", 464)
rescue ArgumentError => e
  puts e.message 
end

begin
  Book.new("Clean Code", "Robert Martin", -5)
rescue ArgumentError => e
  puts e.message  
end