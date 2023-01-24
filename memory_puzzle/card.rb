class Card
  attr_reader :face_value, :face_side

  def initialize
    @face_value = face_value
    @face_side = false
  end

  def hide
    return @face_value == "" if !@face_side
  end

  def reveal
    return @face_value unless @face_side
  end

  def to_s
    @face_value.to_s
  end
end
