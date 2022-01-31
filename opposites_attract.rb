def lovefunc(flower1, flower2)
  (flower1.odd? && flower2.even?) || (flower1.even? && flower2.odd?)
end

p lovefunc(2, 2)
