class RomanNumber

  NUMBER_TO_ROMAN = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }

  def self.conversion(num)
    roman = ''
    last_value = nil
    NUMBER_TO_ROMAN.each do |key, value|

      while num >= key
        num -= key
        roman << value
        puts "roman #{roman}"
        roman = self.convert_excedent(roman, last_value)
      end

      last_value = value
    end

    roman
  end

  def self.convert_excedent(number, next_number)
    if number.size > 3 && next_number
      number[-1] + next_number
    else
      number
    end
  end

end