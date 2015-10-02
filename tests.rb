#test
require "./human"
require "./player"
require "./computer"
require "./board"
require "./scoreboard"
require "./game"

require "minitest/autorun"


class HumanPlayerTests < MiniTest::Test
	def setup
		@player = HumanPlayer.new
    	@somedude = HumanPlayer.new("Dude")
	end

  def test_can_make_player
    assert @player
    assert @somedude
  end

  def test_can_get_names
    assert_equal @somedude.name, "Dude"
    assert_equal @player.name, "The Nameless One"
  end

  def test_can_validate_guess
    refute @player.valid_guess?("a")
    refute @player.valid_guess?("cookies")
    refute @player.valid_guess?("A")
    refute @player.valid_guess?("!")
    refute @player.valid_guess?("42")
    assert @player.valid_guess?("3")
  end

end

class ComputerPlayerTests < MiniTest::Test
  def test_can_build_player
    assert RandomPlayer.new
  end
end

class BoardTests < MiniTest::Test
	def test_can_make_board
		@board = Board.new
		assert @board
	end

	def test_iswin
		#set up winning board
		@board.iswin?
	end

	def test_isdraw
		#set up draw
		@board.isdraw?
	end

	def test_move
		#make move
		#check board
	end
end

class ScoreboardTests < MiniTest::Test

end
