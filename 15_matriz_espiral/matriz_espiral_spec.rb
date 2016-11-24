require 'rspec'
require_relative 'matriz_espiral'

RSpec.describe MatrizEspiral do

  before do
    @instance = MatrizEspiral.new
  end

  describe '#build_matrix' do
    it 'builds an empty matrix' do
      @instance.build_matrix(2, 2)
      expect(@instance.matrix).to eq([[nil, nil], [nil, nil]])
    end

    it 'builds a huge matrix' do
      @instance.build_matrix(50, 10)
      expect(@instance.matrix.flatten.size).to eq(500)
    end

    it 'width matrix' do
      @instance.build_matrix(50, 10)
      expect(@instance.width).to eq(500)
    end

    # it 'fill numbers' do
    #   @instance.build_matrix(2, 2)
    #   expect(@instance.fill_matrix).to eq([[1, 2], [4, 3]])
    # end
  end

  describe '#rotate' do
    before do
      @instance.matrix = [[1, 2], [nil, nil]]
    end

    it 'rotates the matrix' do
      @instance.rotate
      expect(@instance.matrix).to eq([[2, nil], [1, nil]])
    end
  end

  describe '#fill' do
    before do
      @instance.build_matrix(2, 2)
    end

    it 'fills the first line' do
      @instance.fill
      expect(@instance.matrix).to eq([[1, 2], [nil, nil]])
    end

    it 'fills two sides' do
      @instance.fill
      @instance.rotate
      @instance.fill

      expect(@instance.matrix).to eq([[2, 3], [1, nil]])
    end
  end

  describe '#solve' do
    context '2x2' do
      before do
        @instance.build_matrix(2, 2)
      end

      it 'solves the problem' do
        @instance.solve
        expect(@instance.matrix).to eq([[1, 2], [4, 3]])
      end
    end

    context '4x4' do
      before do
        @instance.build_matrix(4, 4)
      end

      it 'solves the problem' do
        @instance.solve
        expect(@instance.matrix).to eq([[1, 2, 3, 4], [12, 13, 14, 5], [11, 16, 15, 6], [10, 9, 8, 7]])
      end
    end
  end
end
