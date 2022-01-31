def  first_non_repeating_letter(string) 
  my_string = string.split("")
  return "" if my_string.empty?
  for character in my_string do
    return "" if my_string.all? { |c| my_string.count(c.downcase) > 1 }
    return character if my_string.map {|c| c.downcase }.count(character.downcase) == 1
  end  
end