require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :turn, :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_1 = player_1
    @player_2 = player_2
    @turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @turn = opponent_of(turn)
  end

  def opponent_of(current_player)
    players.select { |player| player != current_player }.first
  end

  def game_over?(player)
    return true if player.hp == 0
  end

end
