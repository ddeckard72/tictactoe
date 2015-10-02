require "./human"
require "./player"
require "./computer"
require "./board"
require "./game"

require "pry"

class ScoreBoard(player1, player2)
	#game history
	def initialize
		@round = 1
		@player1 = player1
		@player2 = player2
		@player1_wins = 0
		@player2_wins = 0
		@winner = nil
	end

	def winner(player)
		if player == player1
			@player1_wins += 1
		else
			@player2_wins += 1
		end
		@round += 1
		@winner = player 
	end 

	def show
		puts "#{@winner} won this round."
		if @rount > 1
			puts "#{@round} round's played."
		else
			puts "1 round played"
		end
		puts "#{@player1.name} : #{@player1_wins}  #{@player1.name} : #{player2_wins}"
	end

end
