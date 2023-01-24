class Card
  attr_reader :face_value, :face_down, :face_down_value

  def initialize
    @face_value = ("a".."z").to_a.sample
    @face_down = true
    @face_down_value = ""
  end

  def hide
    @face_down = true
    @face_down_value
  end

  def reveal
    @face_down = false
    @face_value
  end

  def to_s
    if @face_down
      @face_value
    else
      @face_down_value
    end
  end
end
