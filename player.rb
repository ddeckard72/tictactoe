
require "./player"
require "./computer"
require "./board"
require "./scoreboard"
require "./game"

require "pry"

class Player.rb
	def initialize(name = "The Nameless One")
		@name = name
	end 

	def name
		@name
	end
end