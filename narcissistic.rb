def narcissistic?(value)
  value.to_i
  return false if value <= 0
  base = value.digits 
  exponent = base.length
  new_base = []
  base.each do |x|
   new_base << x**exponent 
  end
  sum = 0
  new_base.each do |x|
    sum += x
  end
  value == sum ? true : false
end