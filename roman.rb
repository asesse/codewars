def solution(roman)
  roman_numeral = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000,
  }

numeric_decimal = roman.split("").map { |l| roman_numeral[l] }.each_cons(2).map { |a, b| a < b ? -a : a }.concat([roman_numeral[roman[-1]]]).inject(:+)

end

p solution('MCMXC')

# .map.with_index { |x, i| x[i] >= x[i + 1] ? x[i] - x[i + 1] : x[i] + x[i + 1] }
