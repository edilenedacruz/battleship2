require 'pry'

class Board
  attr_reader :size, :grid, :hit
  def initialize(size)
    @size = size
    @grid = Array.new(size) { Array.new(size, " ") }
    @hit = false
  end

  def change_value(coordinates, status)
    row, column = coordinates
    grid[row][column] = status
  end

  def full_board
    display = [["===========\n. 1 2 3 4\n"],["A", " ", " ", " ", " \n"], ["B", " ", " ", " ", " \n"], ["C", " ", " ", " ", " \n"], ["D", " ", " ", " ", " \n"], ["==========="]].join
  end


  def attack(coordinates)
    row, column = coordinates
    grid[row][column] == "S" ? change_value(coordinates, "H") : change_value(coordinates, "M")
  end

  def hit?(coordinates)
    row, column = coordinates
    grid[row][column] == "S" ? @hit = true : @hit = false
  end

end
