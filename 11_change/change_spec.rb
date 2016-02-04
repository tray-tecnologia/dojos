require 'rspec'
require_relative 'change'

RSpec.describe 'change' do

  # it { expect(Change.change_amount(100, 200)).to eq(2) }
  # it { expect(Change.change_amount(100, 150)).to eq(1) }
  #
  # it { expect(Change.change_amount(50, 200)).to eq(4) }
  # it { expect(Change.change_amount(50, 150)).to eq(3) }
  #
  # it { expect(Change.change_amount(20, 200)).to eq(10) }
  # it { expect(Change.change_amount(20, 150)).to eq(7) }
  #
  # it { expect(Change.change_amount(10, 200)).to eq(20) }
  # it { expect(Change.change_amount(10, 150)).to eq(15) }
  #
  # it { expect(Change.change_amount(5, 200)).to eq(40) }
  # it { expect(Change.change_amount(5, 150)).to eq(30) }
  #
  # it { expect(Change.change_amount(1, 200)).to eq(200) }
  # it { expect(Change.change_amount(1, 150)).to eq(150) }
  #
  # it { expect(Change.change_amount(0.50, 200)).to eq(400) }
  # it { expect(Change.change_amount(0.50, 150)).to eq(300) }
  #
  # it { expect(Change.change_amount(0.10, 200)).to eq(2000) }
  # it { expect(Change.change_amount(0.10, 150)).to eq(1500) }
  #
  # it { expect(Change.change_amount(0.05, 200)).to eq(4000) }
  # it { expect(Change.change_amount(0.05, 150)).to eq(3000) }
  #
  # it { expect(Change.change_amount(0.01, 200)).to eq(20000) }
  # it { expect(Change.change_amount(0.01, 150)).to eq(15000) }

  it { expect(Change.calculate(200, 500)).to eq(300) }

  it { expect(Change.calculate(200.50, 500)).to eq(299.50) }

  it { expect(Change.lower_quantity_cells(300)).to eq({100 => 3}) }
  it { expect(Change.lower_quantity_cells(350)).to eq({100 => 3, 50 => 1}) }

  it { expect(Change.lower_quantity_cells(370)).to eq({100 => 3, 50 => 1, 10 => 2}) }
  it { expect(Change.lower_quantity_cells(480)).to eq({100 => 4, 50 => 1, 10 => 3 }) }
  it { expect(Change.lower_quantity_cells(10.56)).to eq({10 => 1, 0.50 => 1, 0.05 => 1, 0.01 => 1}) }
  it { expect(Change.lower_quantity_cells(10.87)).to eq({10 => 1, 0.50 => 1, 0.10 => 3, 0.05 => 1, 0.01 => 2}) }


end
