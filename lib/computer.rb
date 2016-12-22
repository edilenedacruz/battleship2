require 'pry'
require_relative 'board'

class Computer
  attr_reader :board, :ships
  def initialize(board, ships = [2, 3])
    @board = Board.new(4)
    @ships = ships
  end

  def add_ships(coordinates)
    coordinates.map { |coordinate| @board.change_value(coordinate, "S")}
  end

end
 #add random after creating validations
 
