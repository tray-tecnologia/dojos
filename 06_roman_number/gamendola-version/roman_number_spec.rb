require 'rspec'
require_relative 'roman_number'

RSpec.describe RomanNumber do
  
  it { expect(RomanNumber.convert(100)).to eq('C') }
  it { expect(RomanNumber.convert(500)).to eq('D') }
  it { expect(RomanNumber.convert(4)).to eq('IV') }
  it { expect(RomanNumber.convert(9)).to eq('IX') }
  it { expect(RomanNumber.convert(99)).to eq('XCIX') }
  it { expect(RomanNumber.convert(97)).to eq('XCVII') }
  it { expect(RomanNumber.convert(4000)).to eq('MMMM') }
  it { expect(RomanNumber.convert(257)).to eq('CCLVII') }
  it { expect(RomanNumber.convert(666)).to eq('DCLXVI') }
  it { expect(RomanNumber.convert(3999)).to eq('MMMCMXCIX') }
  it { expect(RomanNumber.convert(509)).to eq('DIX') }
  it { expect(RomanNumber.convert(300)).to eq('CCC') }
  it { expect(RomanNumber.convert(1009)).to eq('MIX') }
  it { expect(RomanNumber.convert(999)).to eq('CMXCIX') }

end