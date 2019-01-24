require 'controller'

class Router

	def initialize 
		@controller = Controller.new
	end 

	def perform 
		puts "Bienvenue dans notre super jeu : le Tic-Tac-Toe."

		while true 
			puts "Que veux tu faire jeune moussaillon ?"
			puts "-" * 30
			puts "1. Je veux gamer, ça à l'air trop cool !"
			puts "2. Ton jeu est naze, je me tire"
			answer = gets.chomp.to_i

		case answer
			when 1 
			puts "C'est parti mon kiki"
			@controller.start_game

			when 2 
			puts "Retourne coder alors lol"
			break 

			else
			"Réponds par 1 ou 2 fdp"

		end 
		end 
	end 
end 

