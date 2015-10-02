class HumanPlayer
	def initialize

	end

	def take_turn(board)
		puts "#{@name} you're up."
		puts "Choose a square (1-9)"
		move = gets.chomp.to_i
  			until board.get_available_moves.include?(move)
    			puts "#{move} isn't an available space. Choose again: "
    		move = gets.chomp.to_i
  		end
  	move
	end
end
