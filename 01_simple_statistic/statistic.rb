# 1. Dojo Tray 31/01/15
# Integrantes
# Gabriel Pereira, Jose Honjoya, Edson Zampieri, Claudio Joao, Fabio Toledo, Bruno Alcantara, Luciana Santos, Anderson Kumagai, Rafael Takashi, Danilo Deverso


def test_smoke
  'smoke'
end

def return_minimo(valores)
  # ordered = valores.sort
  # ordered.first
  valores.min
end

def return_maximum(valores)
  # ordered = valores.sort
  # ordered.last

  # valores.max

  maximum = valores.first
  valores.each do |valor|
    #   if (valor > maximum)
    #    maximum = valor
    #   end

    #  maximum = valor if valor > maximum
    maximum = valor unless valor < maximum

  end
  maximum
end

def array_lenght(valores)
  # valores.size
  count = 0
  # valores.each do |valor|
  #   count += 1
  # end
  valores.each { |valor| count += 1; }
  count
end

def avg(valores)
  soma = 0.0;
  a = []
  a = Array.new

  valores.each do |valor|
    soma += valor
  end

  size = valores.size
  soma/size
end

def par_impar(valores)
  ret = []
  valores.each do |valor|
    # ret << 'p' if valor%2 == 0
    # ret << 'i' unless valor%2 == 0


    # ret << 'p' if valor.even?
    # ret << 'i' unless valor.even?

    ret << 'p' unless valor.odd?
    ret << 'i' if valor.odd?
  end
  return ret
end
