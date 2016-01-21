class WesleySafadao

  def self.somatorio(numero)
    auxiliar = numero
    if numero > 0
      auxiliar = auxiliar + somatorio(numero - 1)
    else
      auxiliar
    end
  end

  def self.safadeza_ano(numero)
    numero.to_f / 100
  end
  def self.safadeza_dia(numero)
    50-numero
  end

  def self.safadeza(dia,mes,ano)
    somatorio(mes)+safadeza_ano(ano)*safadeza_dia(dia)
  end

  def self.anjo(safadeza)
    100 - safadeza
  end

  def self.safadeza_anjo(dia,mes,ano)
    auxiliar = safadeza(dia,mes,ano)
    "Safadeza: "+auxiliar.to_s+"%, Anjo: "+anjo(auxiliar).to_s+"%"
  end

  def self.validacao_dia(dia)
    (1..31).include?(dia)
  end

  def self.validacao_mes(mes)
    (1..12).include?(mes)
  end

  def self.validacao_ano(ano)
    (1900..(Time.now.year)).include?(ano)
  end

  def self.validacao_idade(ano)
    (Time.now.year) - ano
  end

end
