require_relative "card.rb"

class Board
  attr_reader :size

  def initialize(size)
    raise "Please pick an even number" if size % 2 != 0
    @size = size
    @grid = Array.new(size) { Array.new(size) }
  end

  def [](pos)
    row, col = pos

    @grid[row][col]
  end

  def []=(pos, mark)
    row, col = pos

    @grid[row][col] = mark
  end

  def shuffle
    cards = []
    amount_of_pairs = (@size * @size) / 2
    amount_of_pairs.times do
      cards << Card.new
    end

    hash = {}

    cards.each do |card|
      if !hash[card]
        hash[card] = 1
      else
        hash[card] += 1
      end
    end

    cards.each do |card|
      if hash[card] < 2
        cards << card.clone
      end
    end
  end
end
