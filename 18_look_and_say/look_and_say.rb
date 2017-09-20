class LookAndSay
  attr_accessor :sequence

  def initialize(number)
    if number > 1
      @sequence = 'd'
    else
      @sequence = number.to_s
    end
  end

  def add_number_sequence(number)
    @sequence << number.to_s
  end

  def split_values
    sequence.split('')
  end

  def read_sequence
    splitted = split_values

    count = 1
    str = ''
    char = nil
    splitted.each do |number|
      if number != char
        str << count.to_s + char unless char.nil?
        char = number
        count = 1
      else
        count += 1
      end
    end
    str << count.to_s + char
    str
  end
  # def change_value(value)
  #   @sequence = value
  # end
end
