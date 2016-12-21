require_relative 'test_helper'
require './lib/battleship'

class BattleShipTest < Minitest::Test

  def test_class_exists
    bs = BattleShip.new
    assert_instance_of BattleShip, bs
  end

  def test_it_greats_player
    bs = BattleShip.new
    expected = "Ahoy Matey!\nYou be havin' crossed dangerous waters an' we must swashbuckle!\nType (p)lay if ye be ready t' battle, (i)nstructions if ye must need lessons on how t' run yer ship, or (q)uit if ye be too lily livered t' battle."
    assert expected, bs.welcome
  end

  # def test_it_starts_game
  #
  # end
end
