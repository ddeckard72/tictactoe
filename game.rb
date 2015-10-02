require "./human"
require "./player"
require "./computer"
require "./board"
require "./scoreboard"

require "pry"

class Game
	def initialize (player1, player2)
		@player1 = player1
		@player2 = player2
		@board = Board.new
		@scoreboard = Scoreboard.new
		@current_player = player2

	end

	def restart
		@board = Board.new
		@current_player = player2

	end

	def swap_players(player1, player2)
		@player1 = player2
		@player2 = player1
	end

	def play
		until @board.iswin? || @board.draw?
			@board.show
			if current_player == player1
				@board.move(@player1.take_turn(board),"X")
				@current_player = player1
			else
				@board.move(@player2.take_turn(board),"O")
				@current_player = player2
			end

		end	

		@scoreboard.winner(@current_player)
		@scoreboard.show 
	end

end
