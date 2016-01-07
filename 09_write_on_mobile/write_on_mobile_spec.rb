require 'rspec'
require 'pry'
require_relative 'write_on_mobile'

RSpec.describe '#' do

  it 'load_constants' do
    expect(WriteMobile.constants[2]).to eq(['A', 'B', 'C'])
    expect(WriteMobile.constants[3]).to eq(['D', 'E', 'F'])
    expect(WriteMobile.constants[4]).to eq(['G', 'H', 'I'])
    expect(WriteMobile.constants[5]).to eq(['J', 'K', 'L'])
  end

  it 'read_char' do
    expect(WriteMobile.read_char('2')).to eq('A')
  end

end
