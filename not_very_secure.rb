def alphanumeric?(string)
  string.match /^[a-zA-Z\d]+$/
end

puts alphanumeric?("")
puts alphanumeric?("hello world_")
puts alphanumeric?("HELLOworld123")