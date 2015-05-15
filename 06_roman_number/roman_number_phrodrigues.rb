class RomanNumberPhrodrigues

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
    NUMBER_TO_ROMAN.each do |key, value|
      qtde = num / key
      if qtde == 4
        num -= 4*key
        if roman[-1] == NUMBER_TO_ROMAN[5*key]
          roman[-1] = value
          roman << NUMBER_TO_ROMAN[10*key]
        else
          roman << value + NUMBER_TO_ROMAN[5*key]
        end
      else
        qtde.times do
          roman << value
          num -= key
        end
      end
    end
    roman
  end
end
