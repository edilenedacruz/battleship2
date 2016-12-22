require_relative 'test_helper'
require './lib/messages'

class MessagesTest < Minitest::Test
  attr_reader :m
  def setup
    @m = Messages.new
  end

  def test_class_exists
    assert_instance_of Messages, m
  end

  def test_prints_welcome_phrase
    expected = "Ahoy Matey!\nYou be havin' crossed dangerous waters an' we must swashbuckle!"
    assert expected, m.welcome
  end

  def test_it_allows_player_choose_their_fate
    expected = "Type (p)lay if ye be ready t' battle, (i)nstructions if ye must need lessons on how t' run yer ship, or (q)uit if ye be too lily livered t' battle."
    assert expected, m.choose_destiny
  end

  def test_it_prints_instructions
    expected = "You will be playing against the computer. You will be given a grid where you can secretly place your ships by entering the coordinates like 'A1 A2'. If you hit my ship, an H will mark that position, if you missed, an M will mark it."
    assert expected, m.instructions
  end

  def test_it_prints_play_message
    assert "Let`s battle till th` end. Nay quarter given!!!", m.play_message
  end

  def test_it_prints_quit_message
    assert_equal "Quittin'?!! Ye be nay a captain, ye be a scurvy dog!", m.quit
  end

  def test_placement_restrictions
    expected =     "Here be some rules fer yer ships:\nShips cannot wrap around th' board\nShip canna overlap\nShips can be laid either port t' starboard or top t' bottom\nCoordinates must correspond t' th' first an' last units o' th' ship. (IE: Ye canna place a two unit ship at 'A1 A3')\n\n\n"
    assert expected, m.placement_restrictions
  end

  def test_it_prints_computer_ship_placement
    expected = "I be havin' laid ou' me ships on th' grid.\nYe now need t' layout yer two ships.\nTh' first be two units long an' th' second be three units long.\nTh' grid has A1 at th' top port an' D4 at th' bottom starboard.\n"
    assert expected, m.placement_computer_ship
  end

  def test_it_prints_request_for_first_ship
    expected = "Ya scallywag!\nEnter th' squares fer th' small ship (IE: A1 A2)"
    assert expected, m.placement_two_unit_ship
  end

  def test_it_prints_request_for_second_ship
    expected = "Ya scallywag!\nEnter th' squares fer th' big ship (IE: A1 A3)"
    assert expected, m.placement_three_unit_ship
  end
end
