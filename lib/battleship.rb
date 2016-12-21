require_relative 'messages'
require 'pry'

class BattleShip
  attr_reader :messages
  def initialize
    @messages = Messages.new
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
    puts messages.placement_first_ship
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
