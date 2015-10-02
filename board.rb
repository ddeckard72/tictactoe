require "./human"
require "./player"
require "./computer"
require "./scoreboard"
require "./game"

require "pry"

class Board
	def initialize
		@board = (1..9).to_a
		winset = [[0,1,2],[3,4,5][6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
	end

	def show
	  puts "
	      -----------
	     | #{board[0]} | #{board[1]} | #{board[2]} |
	     | #{board[3]} | #{board[4]} | #{board[5]} |
	     | #{board[6]} | #{board[7]} | #{board[8]} |
	      -----------
	  "
	end

	def get_available_moves
		moves = @board.reject { |x| x.is_a?(String)}
	end

	def iswin?
		winset.any? do |x,y,z]
			@board[x] == @board[y] && @board[y] == @board[z]
		end
	end

	def isdraw?
		get_available_moves.empty?
	end

	def move(space, piece)
		@board[space - 1] = piece

	end
end
