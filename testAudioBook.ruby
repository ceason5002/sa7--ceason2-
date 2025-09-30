require_relative "audiobook"

puts "=== Step 2 Tests ==="
# Success case
audio = Audiobook.new("Ruby Programming", "Jane Smith", 8.5)
puts audio.to_s   
# Failure cases
begin
  Audiobook.new("", "Jane Smith", 8.5)
rescue ArgumentError => e
  puts e.message  
end

begin
  Audiobook.new("Ruby Programming", "", 8.5)
rescue ArgumentError => e
  puts e.message 
end

begin
  Audiobook.new("Ruby Programming", "Jane Smith", 0)
rescue ArgumentError => e
  puts e.message  
end
