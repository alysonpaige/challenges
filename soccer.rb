class Soccer
  attr_accessor :team, :stadium, :location

  def initialize(team, stadium, location)
    @team = team
    @stadium = stadium
    @location = location
  end

  def output
    puts "#{team}'s #{stadium} stadium is based in #{location}."
  end
end

soccer = Soccer.new("FC Barcelona", "Camp Nou", "Barcelona, Spain")
soccer.output

# class Team
#   def ball
#   end

#   def logo
#   end
# end

# class Player < Team
#   def jersey
#   end

#   def boot
#   end
# end

# class LeoMessi < Player
#   def number
#   end

#   def captain
#   end
# end