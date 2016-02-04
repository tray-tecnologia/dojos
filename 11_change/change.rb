class Change

  def self.calculate(value, paid)
    paid - value
  end

  def self.lower_quantity_cells(value)
    hash = {}
    [100,50,10,5,1,0.5,0.10,0.05,0.01].each do |cell|
      next if value.round(2) < cell
      resto = value.round(2) % cell
      hash[cell] = (value.round(2) / cell).to_i
      break if resto == 0
      value = resto.round(2)
    end

    hash
  end
end
