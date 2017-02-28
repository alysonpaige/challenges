class Soccer(field, goal)
  attr_accessor :field, :goal

  def initialize(field, goal)
    @field = field
    @goal = goal
  end
end

class Team
  def ball
  end

  def logo
  end
end

class Player < Team
  def jersey
  end

  def boot
  end
end

class LeoMessi < Player
  def number
  end

  def captain
  end
end