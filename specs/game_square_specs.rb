require("minitest/autorun")
require("minitest/rg")
require_relative("../game_square.rb")

class TestGameSquare < MiniTest::Test

  def setup
    @game_square1 = GameSquare.new(false)
    @game_square2 = GameSquare.new(false)
    @game_square3 = GameSquare.new(false)
    @game_square4 = GameSquare.new(true)
    @game_square5 = GameSquare.new(false)
    @game_square6 = GameSquare.new(false)
  end


  def test_game_square_has_teleporter_status
    refute_nil(@game_square6.teleporter_status)
  end

  def test_game_square1_has_teleporter_status_false
    assert_equal(false, @game_square1.teleporter_status)
  end

  def test_game_square4_has_teleporter_status_true
    assert_equal(true, @game_square4.teleporter_status)
  end


end
