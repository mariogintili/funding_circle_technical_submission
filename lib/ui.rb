class Ui
  attr_accessor :grid

  def initialize(grid:)
    @grid = grid
  end

  def draw
    grid.content.each do |row|
      puts row.inspect
    end
  end
end
