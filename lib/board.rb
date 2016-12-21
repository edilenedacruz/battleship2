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
    display = ["===========\n. 1 2 3 4  ", "\nA ", " \nB ", " \nC ", " \nD ", " \n===========\n"]
    grid.each_with_index do |row, row_index|
      row.each do |column|
        display[row_index + 1] << "#{column} "
      end
    end
    display.join
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

# Board.new(4).full_board


# def wrapper
#   [("=====" * size + "=")]
# end
#
# def numbers_row
#   numbers_row = ["."]
#   size.times { |num| numbers_row << "#{num + 1}" }
#   numbers_row
# end
#
# def letters_rows
#   last_letter = (("A".ord) + (size-1)).chr
#   ("A"..last_letter).map do |letter|
#     rows = ["#{letter}" ]
#     size.times do
#       rows << " "
#     end
#     rows
#   end
# end
#
# def full_board
#   full_board = letters_rows
#   full_board.unshift(numbers_row)
#   full_board.unshift(wrapper)
#   full_board.push(wrapper)
#   full_board
# end
