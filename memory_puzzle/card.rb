class Card
  attr_reader :face_value, :face_side, :face_down_value

  def initialize
    @face_value = ("a".."z").to_a.sample
    @face_down = true
    @face_down_value = ""
  end

  def hide
    return @face_down_value unless @face_down
  end

  def reveal
    return @face_value
  end
end
