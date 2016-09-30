require 'rspec'
require_relative 'quebra_linha'

RSpec.describe 'QuebraLinha' do
  it 'break line' do
    response = break_line( "Um pequeno jabuti xereta viu dez cegonhas felizes.", 20)
    expect(response).to eq("Um pequeno jabuti\n xereta viu dez\n cegonhas felizes.")
  end

  it 'char_count' do
    response = char_count("123456789")
    expect(response).to eq(9)
  end

  it 'word_count' do
    response = word_count("Um pequeno jabuti xereta viu dez cegonhas felizes.")
    expect(response).to eq(8)
  end

  it 'break' do
    response = quebra("Um pequeno jabuti xereta viu dez cegonhas felizes.")
    p response
    # expect(response).to eq(8)
  end
end
