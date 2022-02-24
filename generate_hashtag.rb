def generateHashtag(str)
  # It must start with a hashtag (#).
  # All words must have their first letter capitalized.
  # If the final result is longer than 140 chars it must return false.
  # If the input or the result is an empty string it must return false.
  return false if str.strip.empty?
  new_str= str.split(" ").map { |w| w.capitalize }.join.strip.insert(0, '#')
  return false if new_str.length > 140
  return new_str
end

puts generateHashtag(" Hello there thanks for trying my Kata")  # =>  "#HelloThereThanksForTryingMyKata"
puts generateHashtag("    Hello     World   ")                  # =>  "#HelloWorld"
puts generateHashtag("") 
puts generateHashtag("   ")                                       # =>  false