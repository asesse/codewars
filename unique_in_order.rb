def unique_in_order(iterable)
  if iterable.size == 2
    array_of_chars = iterable.chars.uniq!
  elsif iterable.size == 1
    array_of_chars = iterable.chars
    return array_of_chars
  else
    if iterable.class == String
      array_of_chars = iterable.chars
      array_of_chars.each_with_index do |e, i|
        array_of_chars.delete_at(i) if array_of_chars[i] == array_of_chars[i + 1]
        array_of_chars.delete_at(i) if array_of_chars[i] == array_of_chars[i - 1]
      end
    else
      iterable.each_with_index do |e, i|
        iterable.delete_at(i + 1) if iterable[i] == iterable[i + 1]
        iterable.delete_at(i) if iterable[i] == iterable[i - 1]
      end
    end
  end
end