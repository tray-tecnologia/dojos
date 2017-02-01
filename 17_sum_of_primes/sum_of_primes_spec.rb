require 'rspec'
require_relative 'sum_of_primes'

RSpec.describe SumOfPrimes do
  let(:instance) { SumOfPrimes.new }
  describe '#calculate' do
    it 'sums all numbers' do
      expect(instance.calculate([2, 3, 5])).to eq(10)
    end
  end

  describe '#calculate_prime' do
    it 'return if prime' do
      expect(instance.calculate_prime(10)).to be false
    end
  end

  describe '#find primes' do
    it 'return primes to 9' do
      expect(instance.find_primes(9)).to eq([2, 3, 5, 7])
    end
  end

  describe '#sum of primes' do
    it 'return the sum of primes' do
      expect(instance.solve(9)).to eq(17)
    end
  end
end
