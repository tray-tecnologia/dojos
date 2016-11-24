class MatrizEspiral

  attr_accessor :matrix, :lines, :columns, :number, :offset, :x

  def initialize
    @matrix = []
    @number = 1
    @offset = 0
    @x = 0
  end

  def build_matrix(lines, columns)
    @lines = lines
    @columns = columns
    lines.times do
      @matrix << Array.new(columns)
    end
  end

  def width
    matrix.flatten.size
  end

  def fill_matrix
    value = 1
    (0...@lines).each do |line|
      (0...@columns).each do |column|
        @matrix[line][column] = value
        value += 1
      end
    end
    @matrix
  end

  def rotate
    @matrix = matrix.transpose.reverse
  end

  def fill
    matrix[offset].each_with_index do |line, idx|
      next unless matrix[offset][idx].nil?
      @matrix[offset][idx] = number
      @number += 1
    end
  end

  def solve
    while(matrix.flatten.include?(nil)) do
      rotate
      fill
      @x += 1
      @offset = (x / 4).to_i
    end

    while(matrix[0][0] != 1) do
      rotate
    end
  end
end
