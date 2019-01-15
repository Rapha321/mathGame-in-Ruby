require_relative './turn_manager'

class Game
  def initialize

    # list of players
    @players = [
      Player.new('Player_1'),
      Player.new('Player_2'),
      Player.new('Player_3'),
      Player.new('Player_4')
    ]

    # The turn manager manages which round it is as well as
    # which player is playing and against who
    @turn_manager = TurnManager.new(@players)

end


def play
  while (not game_over?) do
    #get the next turn from the turn manager
    turn = @turn_manager.next_turn

    #print out a round header
    puts ""
    puts "==== ROUND ##{turn.round} ====="
    puts ""

    #if a player is dead, print a message and move on
    if turn.player