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
    assert @computer = ComputerPlayer.new("Bob")
  end
end

class BoardTests < MiniTest::Test
	def setup
		@board = Board.new
	end

	def test_can_make_board
		assert @board
	end

	def test_iswin?
		#set up winning board
		assert @board.iswin? == false
	end

	def test_isdraw?
		#set up draw

		assert @board.isdraw? == false
	end

	def test_move
		#make move
		#check board
	end
end

class ScoreboardTests < MiniTest::Test
	def setup
		@player1 = Player.new("Bob")
		@player2 = Player.new("Joe")
		@scoreboard = ScoreBoard.new(@player1, @player2)
	end

	def test_can_make_scoreboard
		assert @scoreboard
	end
	
	def test_winner
	#give it a winner
	@scoreboard.winner(@player1)
	assert @scoreboard.winner? == @player1
	end
	#check values
end
