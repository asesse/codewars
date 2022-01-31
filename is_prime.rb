# Test if number is prime
def isPrime(num)
  is_prime = true
  num_range = [*2..1000000]
  num_range.delete_if {|n| n == num}
  num_range.each do |n|
    if num % n == 0
      is_prime = false
    end
  end
  is_prime ? true : false
end
