require 'jeu'
require 'view'

class Controller

	def initialize 
		@view = View.new
	end 

	def start_game
		answer = @view.start_game
		jeu = Jeu.new(answer[:player1], answer[:player2])
		jeu.play_game
	end

end

