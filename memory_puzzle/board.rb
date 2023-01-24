require_relative "card.rb"

class Board

    def initialize(size)
    raise "Please pick an even number" if size % 2 != 0
    @grid =  Array.new(size){Array.new(size)}
   

    end

    def [](pos)

    row,col = pos

    @grid[row][col]
    
    end

    def []=(pos,mark)

    row,col = pos

    @grid[row][col] = mark

    end
end