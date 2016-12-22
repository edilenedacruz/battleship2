require_relative 'test_helper'
require "./lib/computer"


class ComputerTest < Minitest::Test
  attr_reader :computer
  def setup
    @computer = Computer.new(4)
  end

  def test_it_can_create_board
    assert_equal 4, computer.board.grid.size
  end

  def test_it_can_add_ships_to_board
    assert_equal ["S", "S"], computer.add_ships([[3, 3], [3, 4]])
  end
end
