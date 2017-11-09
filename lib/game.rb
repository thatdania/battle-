require 'player'

class Game
  attr_reader :attack , :player1 , :player2

  def initialize(player1, player2)
     @player1 = player1
     @player2 = player2
  end

  def attack(player)
    player.reduce_hit_points
  end

def hit_points(player)
   player.hit_points
end

end
