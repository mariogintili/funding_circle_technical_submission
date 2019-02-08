class Grid
  attr_accessor :numbers, :matrix

  def initialize(numbers:)
    @numbers = numbers
  end

  def content
    @content ||= build
  end

  private

  def build
    size   = numbers.size
    matrix = Array.new(size) { Array.new(size) }

    numbers.each_with_index do |prime, index|
      matrix[0][index]     = prime
      matrix[index][0]     = prime
    end

    matrix.each_with_index do |row, row_index|
      next if row_index == 0
      row.each_with_index do |number, col_index|
        next if col_index == 0
        begin
          matrix[row_index][col_index] = (matrix[row_index][0] * matrix.transpose[col_index][0])
        rescue
        end
      end
    end
    matrix
  end
end
