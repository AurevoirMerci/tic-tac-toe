require 'jeu'
require 'view'

class Controller

  def initialize 
	@view = View.new
  end 

  # Méthode start_game qui appelle en premier la méthode start_game dans 
  # la page view pour commenrcer le programme, puis qui lance une instance jeu
  # et enfin qui lance la méthode play_game de la page jeu qui fait tout le reste.
  def start_game
	answer = @view.start_game
	jeu = Jeu.new(answer[:player1], answer[:player2])
	jeu.play_game
  end

end

