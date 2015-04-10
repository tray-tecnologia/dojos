require 'rspec'
require_relative 'roman_number'
RSpec.describe RomanNumber do

  describe '.conversion' do
    # it{expect(RomanNumber.conversion(3)).to eql('III')}

    # it{expect(RomanNumber.conversion(30)).to eql('XXX')}

    # it{expect(RomanNumber.conversion(300)).to eql('CCC')}

    # it{expect(RomanNumber.conversion(3000)).to eql('MMM')}

    # it{expect(RomanNumber.conversion(4)).to eql('IV')}

    it{expect(RomanNumber.conversion(9)).to eql('IX')}

  end

  describe '.convert_excedent' do
    # it{expect(RomanNumber.convert_excedent('IIII', 'V')).to eql('IV')}
    # it{expect(RomanNumber.convert_excedent('VIIII', 'X')).to eql('IX')}
    # it{expect(RomanNumber.convert_excedent('VIIII', 'X')).to eql('IX')}
  end

end