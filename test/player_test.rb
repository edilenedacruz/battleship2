require_relative 'test_helper'
require "./lib/player"


class PlayerTest < Minitest::Test
  attr_reader :human
  def setup
    @human = Player.new(4)
  end

  def test_it_can_create_board
    assert_equal 4, human.board.grid.size
  end

  def test_it_can_add_ships_to_board
    assert_equal ["S", "S"], human.add_ships([[3, 3], [3, 4]])  
  end
end
