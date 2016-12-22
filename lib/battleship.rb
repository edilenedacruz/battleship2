require_relative 'messages'
require_relative 'player'
require_relative 'computer'
require_relative 'board'
require 'pry'

class BattleShip
  attr_reader :messages, :player, :computer
  def initialize
    @messages = Messages.new
    @player = Player.new(Board.new(4))
    @computer = Computer.new(Board.new(4))
  end

  def welcome
    puts messages.welcome
    game_sequence
  end

  def game_sequence
    puts messages.choose_destiny
    player_input = gets.chomp.downcase
      if player_input.start_with?("p")
        puts messages.play_message
        start_game
      elsif player_input.start_with?("i")
        puts messages.instructions
        game_sequence
      elsif player_input.start_with?("q")
        puts messages.quit
        exit
      else
        puts "Do ye want t' keel haul th' plank?! This be nay a valid choice, please try again:"
        game_sequence
      end
  end

  def start_game
    puts messages.placement_restrictions
    #generate computer board
    puts messages.placement_computer_ship
    puts messages.placement_two_unit_ship
    player_ships #<============
    # binding.pry
    #input for 2unit ship then fetches 2 unit ship
    first_ship_request = gets.chomp.upcase
    #now split that into coordinates into the player board
    second_ship_request = gets.chomp.upcase
    #also split that into coordinates into the player board
    puts "ENTERING GAME FLOW" #go to a new method
  end

end

# if __FILE__ == $0
#
# BattleShip.new.welcome
