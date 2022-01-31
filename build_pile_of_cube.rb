def find_nb(m)
  cube = 0
   until m == 0
    volume = cube ** 3
    m -= volume
    cube += 1
  end
  return cube
end

p find_nb(36)
