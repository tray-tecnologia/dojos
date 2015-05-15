class Checkbook

  UNITS = {
    1 => 'um',
    2 => 'dois',
    3 => 'tres',
    4 => 'quatro',
    5 => 'cinco',
    6 => 'seis',
    7 => 'sete',
    8 => 'oito',
    9 => 'nove',
    10 => 'dez',
    11 => 'onze',
    12 =>  'doze',
    13 =>  'treze',
    14 =>  'catorze',
    15 =>  'quinze',
    16 =>  'dezesseis',
    17 =>  'dezessete',
    18 =>  'dezoito',
    19 =>  'dezenove'
  }

  TEN = {
    1 => 'dez',
    2 => 'vinte',
    3 => 'trinta',
    4 => 'quarenta',
    5 => 'cinquenta',
    6 => 'sessenta',
    7 => 'setenta',
    8 => 'oitenta',
    9 => 'noventa'
  }

  HUNDREDS = {
    1 => 'cento',
    2 => 'duzentos',
    3 => 'trezentos',
    4 => 'quatrocentos',
    5 => 'quinhentos',
    6 => 'seiscentos',
    7 => 'setessentos',
    8 => 'oitocentos',
    9 => 'novecentos'
  }

  def self.convert(value)
    integer, cents = value.to_s.split('.')

    if value < 1
      to_cents(cents)
    elsif value > 99

    elsif value > 19 && value <= 99
      test(value) + " #{real_str(value)}"
    else
      UNITS[value] + " #{real_str(value)}"
    end
  end

  def self.real_str(value)
    value > 1 ? 'reais' : 'real'
  end

  def self.test(value)
    pos = value / 10
    string = TEN[pos]
    unit = value % 10
    string += " e #{UNITS[unit]}" if unit > 0
    string
  end

  def self.to_cents(value)
    value = value.to_i
    if value > 19 && value <= 99
      test(value) + " #{cent_str(value)}"
    else
      UNITS[value] + " #{cent_str(value)}"
    end
  end

  def self.cent_str(value)
    value > 1 ? 'centavos' : 'centavo'
  end

end
