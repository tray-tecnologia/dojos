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

  SPECIAL_ROMAN_NUMBERS = ['V', 'L', 'D']

  def self.convert(number)
    final_roman = ''
    last_values = []
    NUMBER_TO_ROMAN.each do |key, value|
      local_roman = ''
      while number >= key
        number -= key
        local_roman << value
      end
      final_roman << convert_excedent(final_roman, local_roman, last_values) 
      last_values << value
    end
    final_roman
  end

  def self.convert_excedent(final_roman, local_roman, last_values)
    if local_roman.size > 3 && last_values.any?
      last_value = last_values[-1]
      if SPECIAL_ROMAN_NUMBERS.include?(final_roman[-1])
        last_value = last_values[-2]
        final_roman[-1] = ''
      end
      local_roman = local_roman[0] + last_value
    end
    local_roman
  end

end
