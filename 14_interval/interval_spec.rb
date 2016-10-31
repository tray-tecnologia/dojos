require 'rspec'
require_relative 'interval'

RSpec.describe 'Interval' do
  it 'transform in array' do
    expect(transform_array('100 102 103')).to be_kind_of(Array)
  end

  it 'validate elements' do
    expect(transform_array('100 102 103')).to eq([100, 102, 103])
  end

  it 'ordered elements' do
    expect(transform_array('100 103 102')).to eq([100, 102, 103])
  end

  it 'sequence groups' do
    expect(sequence_groups('100 103 102')).to eq([[100], [102, 103]])
  end

  it 'parse response' do
    expect(parse_response('100 103 102')).to eq('[100], [102-103]')
  end

  it 'parse response' do
    expect(parse_response('100, 101, 102, 103, 104, 105, 110, 111, 113, 114, 115, 150')).to eq('[100-105], [110-111], [113-115], [150]')
  end
end
