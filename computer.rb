class ComputerPlayer
		def initialize

		end

		def take_turn(board)
			available_moves = board.get_available_moves
			move = available_moves.sample
		end 
end
