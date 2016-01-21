require 'rspec'
require_relative 'wesley_safadao'

RSpec.describe 'wesley_safadao' do

  it '.somatorio' do
    expect(WesleySafadao.somatorio(5)).to eq(15)
    expect(WesleySafadao.somatorio(6)).to eq(21)
    expect(WesleySafadao.somatorio(4)).to eq(10)
  end

  it '.safadeza_ano' do
    expect(WesleySafadao.safadeza_ano(2000)).to eq(20)
    expect(WesleySafadao.safadeza_ano(1990)).to eq(19.9)
  end

  it '.safadeza_dia' do
    expect(WesleySafadao.safadeza_dia(10)).to eq(40)
    expect(WesleySafadao.safadeza_dia(15)).not_to eq(30)
  end

  it  '.safadeza' do
    expect(WesleySafadao.safadeza(10,5,2000)).to eq(815)
    expect(WesleySafadao.safadeza(10,5,2000)).not_to eq(715)
  end

  it  '.anjo' do
    expect(WesleySafadao.anjo(1)).to eq(99)
    expect(WesleySafadao.anjo(1)).not_to eq(98)
  end

  it '.safadeza_anjo' do
    expect(WesleySafadao.safadeza_anjo(10,4,2000)).to eq('Safadeza: 810.0%, Anjo: -710.0%')
    expect(WesleySafadao.safadeza_anjo(10,4,2000)).to eq('Safadeza: 810.0%, Anjo: -710.0%')
  end

  it 'validacao_dia' do
    expect(WesleySafadao.validacao_dia(10)).to be_truthy
    expect(WesleySafadao.validacao_dia(40)).to be_falsy
  end

  it 'validacao_mes' do
    expect(WesleySafadao.validacao_mes(11)).to be_truthy
    expect(WesleySafadao.validacao_mes(13)).to be_falsy
  end

  it 'validacao_ano' do
    expect(WesleySafadao.validacao_ano(2012)).to be_truthy
    expect(WesleySafadao.validacao_ano(2017)).to be_falsy
  end

  it 'validacao_ano' do
    expect(WesleySafadao.validacao_idade(1910)).to be > (17)
    expect(WesleySafadao.validacao_idade(2001)).to be < (18)
  end
end
