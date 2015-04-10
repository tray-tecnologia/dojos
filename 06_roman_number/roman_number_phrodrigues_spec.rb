require 'rspec'
require_relative 'roman_number'
RSpec.describe RomanNumberPhrodrigues do

  describe '.conversion' do
    it{expect(RomanNumberPhrodrigues.conversion(3)).to eql('III')}

    it{expect(RomanNumberPhrodrigues.conversion(30)).to eql('XXX')}

    it{expect(RomanNumberPhrodrigues.conversion(300)).to eql('CCC')}

    it{expect(RomanNumberPhrodrigues.conversion(3000)).to eql('MMM')}

    it{expect(RomanNumberPhrodrigues.conversion(4)).to eql('IV')}

    it{expect(RomanNumberPhrodrigues.conversion(9)).to eql('IX')}

    it{ expect(RomanNumberPhrodrigues.conversion(3999)).to eql('MMMCMXCIX') }

    it{ expect(RomanNumberPhrodrigues.conversion(90)).to eql('XC') }

    it{ expect(RomanNumberPhrodrigues.conversion(42)).to eql('XLII') }

  end
end
