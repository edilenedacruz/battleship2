require_relative 'test_helper'
require './lib/board'

class BoardTest < Minitest::Test
  attr_reader :board
  def setup
    @board = Board.new(4)
  end

  def test_it_creates_board_with_argument
    assert_instance_of Board, board
  end

  def test_board_has_4_rows_and_columns
    assert_equal 4, board.grid.length
  end

  def test_it_have_an_empty_string_by_default
    assert_equal " ", board.change_value([3,3], " ")
  end

  def test_it_can_be_given_different_value
    board.change_value([2, 2], "M")
    assert_equal "M", board.grid[2][2]
  end

  def test_it_can_print_full_board
    assert_equal "===========\n. 1 2 3 4  \nA          \nB          \nC          \nD          \n===========\n", board.full_board
  end

  def test_it_can_change_value_to_s_for_ship
    board.change_value([1, 1], "S")
    assert_equal "S", board.grid[1][1]
  end

  def test_when_attacked_changes_value_to_hit
    board.change_value([1, 1], "S")
    assert_equal "H", board.attack([1, 1])
    assert_equal "M", board.attack([1, 2])
  end

  def test_if_coordinates_corresponds_to_ship_it_will_change_hit_to_true
    board.change_value([3, 3], "S")
    assert_equal true, board.hit?([3,3])
  end

end
