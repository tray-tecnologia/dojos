require 'rspec'
require_relative 'checkbook'

RSpec.describe 'Checkbook' do

  context 'units' do
    it { expect(Checkbook.convert(1)).to eq('um real') }
    it { expect(Checkbook.convert(9)).to eq('nove reais') }
  end

  context 'tens' do
    it { expect(Checkbook.convert(10)).to eq('dez reais') }
    it { expect(Checkbook.convert(20)).to eq('vinte reais') }
    it { expect(Checkbook.convert(17)).to eq('dezessete reais') }
    it { expect(Checkbook.convert(25)).to eq('vinte e cinco reais') }
    it { expect(Checkbook.convert(99)).to eq('noventa e nove reais') }
  end

  context 'hundreds' do
    it { expect(Checkbook.convert(100)).to eq('cem reais') }
    it { expect(Checkbook.convert(215)).to eq('duzentos e quinze reais') }
  end

  context 'cents' do
    it { expect(Checkbook.convert(0.01)).to eq('um centavo') }
    it { expect(Checkbook.convert(0.99)).to eq('noventa e nove centavos') }
  end

end
