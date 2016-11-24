require 'rspec'
require_relative 'find_telephone'

RSpec.describe FindTelephone do
  it '#digit' do
    expect(FindTelephone.digit('A')).to eq(2)
  end

  it 'solve' do
    expect(FindTelephone.solve('MY-MISERABLE-JOB')).to eq('69-647372253-562')
    expect(FindTelephone.solve('1-HOME-SWEET-HOME')).to eq('1-4663-79338-4663')
    expect(FindTelephone.solve('')).to eq('minimo de 1 caracter')
    expect(FindTelephone.solve('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')).to eq('limite maximo de 30 caracteres')
  end

  it 'max_char' do
    expect(FindTelephone.validate_length('QWERTYUOALSKDNHFGHJOSIWHGHDYEHDGFJEYHFBJR')).to eq('limite maximo de 30 caracteres')
    expect(FindTelephone.validate_length('')).to eq('minimo de 1 caracter')
  end
end
