require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class TestPlayer < MiniTest::Test

  def setup
    @player1 = Player.new("Rick")
    @player2 = Player.new("Morty")

  end

  def test_player_has_name
    assert_equal("Rick", @player1.name)
  end

  def test_player_has_current_location
    assert_equal(0, @player2.location)
  end

  def test_player_can_roll_dice_and_move
    @player1.roll_and_move
    refute_equal(0, @player1.location)
  end


end
