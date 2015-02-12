require 'rspec'
require_relative 'prime_word'

RSpec.describe PrimeWord do

  describe 'initialize lower letters' do
    it 'first lower letter' do
      expect(PrimeWord.lower_letters['a']).to eq(1)
    end

    it 'last lower letter' do
      expect(PrimeWord.lower_letters['z']).to eq(26)
    end
  end

  describe 'initialize upper letters' do
    it 'first upper letter' do
      expect(PrimeWord.upper_letters['A']).to eq(27)
    end

    it 'last upper letter' do
      expect(PrimeWord.upper_letters['Z']).to eq(52)
    end
  end

  describe 'get value from letter' do
    it 'value a' do
      expect(PrimeWord.get_from_letter("a")).to eq(1)
    end
  end

  describe 'initialize' do
    subject(:prime_word) { PrimeWord.new('Palavra') }

    it { expect(prime_word.string).to eq('Palavra') }

    it 'is prime' do
      expect(prime_word.is_prime?).to be_truthy
    end

    it 'is not prime' do
      prime_word = PrimeWord.new('OutraPalavra')
      expect(prime_word.is_prime?).to be_falsy
    end

    it 'sum total word' do
      prime_word = PrimeWord.new('aaa')
      expect(prime_word.sum).to eq(3)
    end
  end

end
