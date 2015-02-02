require 'rspec'
require_relative 'statistic'

RSpec.describe 'Statistic' do

  before :each do
    @valuesToTest = [6, 9, 15, -2, 92, 11]
  end

  it 'test_smoke' do
    expect(test_smoke).to eq('smoke')
  end

  it 'test_minimo' do
    valores = [4,2,6,76,32,3,1]
    expect(return_minimo(valores)).to eq(1)
  end

  it 'teste maximum' do
    valores = [12,3,56,72,3,4]
    maximum = return_maximum(valores)
    expect(maximum).to eq(72)
  end

  it 'array_lenght' do
    valores = [4, 2, 19, 28, 54, 8]
    expect(array_lenght(valores)).to eq(6)
  end

  it 'test avg' do
    valores = [1,4,2,2,1,2]
    expect(avg(valores)).to eq(12.0/6.0)
  end

  it 'sequencia minima determinada' do
    expect(return_minimo(@valuesToTest)).to eq(-2)
  end
  it 'par ou impar' do
    valores = [1,2,3,4,5]
    expect(par_impar(valores)).to eq(['i','p','i','p','i'])
  end

end