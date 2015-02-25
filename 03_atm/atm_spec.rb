require 'rspec'
require_relative 'atm'

RSpec.describe Atm do

  describe 'bank notes' do
    it 'type bank notes' do
      expect(Atm.type_bank_notes).to eq([100, 50, 20, 10])
    end
  end

  describe 'multiple 10' do
    it 'is multiple 10' do
      expect(Atm.multiple_10?(100)).to be_truthy
    end
     it 'is multiple 10' do
      expect(Atm.multiple_10?(123)).to be_falsy
    end
  end

  describe 'get_bank_notes' do
    it '100' do
      expect(Atm.get_bank_notes(100)).to eq({"100" => 1,
                                        "50" => 0,
                                        "20" => 0,
                                        "10" => 0})
    end
    it '11' do
      expect(Atm.get_bank_notes(11)).to eq({"100" => 0,
                                       "50" => 0,
                                       "20" => 0,
                                       "10" => 0})
    end
    it '150' do
      expect(Atm.get_bank_notes(150)).to eq({"100" => 1,
                                       "50" => 1,
                                       "20" => 0,
                                       "10" => 0})
    end
  end
end


