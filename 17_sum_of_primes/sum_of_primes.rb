class SumOfPrimes
  def calculate(numbers)
    numbers.inject(:+)
  end

  def calculate_prime(number)
    return true if number <= 3
    (2..Math.sqrt(number).ceil).each do |n|
      return false if (number % n).zero?
    end
  end

  def find_primes(number)
    var = []
    (2..number).each do |n|
      var << n if calculate_prime(n)
    end
    var
  end

  def solve(number)
    calculate(find_primes(number))
  end
end
