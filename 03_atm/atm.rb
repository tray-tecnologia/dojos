class Atm

  def self.type_bank_notes
    [100, 50, 20, 10]
  end

  def self.multiple_10?(divisor)
    multiple?(10, divisor)
  end

  def self.multiple?(divisor,dividend)
     dividend % divisor == 0
  end

  def self.get_bank_notes(value)
    bank_notes = {"100" => 0,
                  "50" => 0,
                  "20" => 0,
                  "10" => 0}
    note100 = (value/100).abs
    bank_notes
  end

end
