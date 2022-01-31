def high(x)
  x.split.max_by { |word| word.sum - word.length * 96}
end

p high("hello znu and you")



