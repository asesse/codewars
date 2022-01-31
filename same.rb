def comp(array1, array2)
  square_result = array1.map {|x| x * x}
  array2.all? {|e| square_result.include?(e)}
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [132, 14641, 20736, 361, 25921, 361, 20736, 361])
