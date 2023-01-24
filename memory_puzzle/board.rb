require_relative "card.rb"

class Board
  attr_reader :size

  def initialize(size)
    raise "Please pick an even number" if size % 2 != 0
    @size = size
    @grid = Array.new(size) { Array.new(size) }
    @card = Card.new
  end

  def [](pos)
    row, col = pos

    @grid[row][col]
  end

  def []=(pos, mark)
    row, col = pos

    @grid[row][col] = mark
  end

  def pairs
    pair = []
    rand = @card.face_value
    2.times do
      pair << rand
    end

    pair
  end

  def populate
    pairs = []
    @size.times do
      pairs += self.pair
    end
  end
end
