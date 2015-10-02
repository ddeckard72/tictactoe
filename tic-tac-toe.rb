#tictactoe
require "./human"
require "./player"
require "./computer"
require "./board"
require "./scoreboard"
require "./game"

require "pry"


#get play mode

#get players
puts "Enter player 1 name:"
name = gets.chomp
player1 = Player.new(name)
puts "Enter player 2 name:"
name = gets.chomp
player2 = Player.new(name)

#set up game
a_game = Game.new(player1, player2)
#play game
a_game.play

