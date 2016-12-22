require_relative 'test_helper'
require './lib/battleship'

class BattleShipTest < Minitest::Test
  attr_reader :bs
  def setup
    @bs = BattleShip.new
  end
  def test_class_exists
    assert_instance_of BattleShip, bs
  end

  def test_it_greats_player
    skip
    expected = "Ahoy Matey!\nYou be havin' crossed dangerous waters an' we must swashbuckle!\nType (p)lay if ye be ready t' battle, (i)nstructions if ye must need lessons on how t' run yer ship, or (q)uit if ye be too lily livered t' battle."
    assert expected, bs.welcome
  end

end
