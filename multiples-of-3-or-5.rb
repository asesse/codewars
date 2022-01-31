def solution(number)
  (1...number).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end

p solution(10)
