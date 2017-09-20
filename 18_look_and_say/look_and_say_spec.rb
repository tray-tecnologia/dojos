require 'rspec'
require_relative 'look_and_say'

RSpec.describe LookAndSay do

  describe 'initialize' do
    context 'when initial number is 1' do
      before do
       @instance = LookAndSay.new(1)
      end

      it '1' do
        expect(@instance.sequence).to eq('1')
      end
    end

    context 'when initial number is greater than 1' do
      before do
        @instance = LookAndSay.new(2)
      end

      it 'set initial sequence as "d"' do
        expect(@instance.sequence).to eq('d')
      end
    end

    context 'when adds number to sequence' do
      before do
       @instance = LookAndSay.new(1)
      end

      it 'return sequence' do
        @instance.add_number_sequence('1')
        expect(@instance.sequence).to eq('11')
      end
    end

    describe 'split values' do
      before do
       @instance = LookAndSay.new(1)
      end

      it 'return sequence' do
        expect(@instance.split_values).to eq(['1'])
      end
    end

    describe 'read_sequence' do
      before do
        @instance = LookAndSay.new(1)
        @instance.sequence = '111221'
      end

      it  '' do
        expect(@instance.read_sequence).to eq('312211')
      end
    end
  end

end
