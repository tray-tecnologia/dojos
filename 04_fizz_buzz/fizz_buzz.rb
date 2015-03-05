class FizzBuzz


  def self.sum(number1, number2)
    number1 + number2
  end

  def self.return_fizz_number(number)
   FizzBuzz.eh_divisivel?(number, 3) ? 'Fizz': number
  end

  def self.eh_divisivel?(valor, parametro)
    valor % parametro == 0
  end

  def self.return_buzz(number)
    FizzBuzz.eh_divisivel?(number, 5) ? 'Buzz': number
  end

  def self.return_fizz_buzz (number)
    if self.eh_divisivel?(number, 3) && self.eh_divisivel?(number, 5)
      'FizzBuzz'
    else
      number
    end
  end

  def self.return_fizz_buzz_number(number)
    if self.eh_divisivel?(number, 3) && self.eh_divisivel?(number, 5)
      'FizzBuzz'
    elsif self.eh_divisivel?(number, 3)
      'Fizz'
    elsif self.eh_divisivel?(number, 5)
      'Buzz'
    else
      number
    end
  end

  def self.return_array
    (1..15).map { |n| self.return_fizz_buzz_number(n) }
  end

end

a = FizzBuzz.return_array
puts "A => #{a}"