class View

	def start_game
		@A1 = "X" 
		@A2 = "X"
		@A3 = "X"
		@B1 = "X"
		@B2 = "X"
		@B3 = "X"
		@C1 = "X"
		@C2 = "X"
		@C3 = "X"
		puts "Voici les règles :"
		puts "- Les 2 joueurs jouent à tour de rôle"
		puts "- Le premier qui parvient à aligner 3 de ses pions à gagner."
		puts "- Impossible de jouer sur une case déjà prise"
		puts " Que le meilleur gagne !"
		puts " Voici le plateau :"
		puts ""
		puts ""
		puts " " * 5 + " " * 5 + "A" + " " * 10 + "B" + " " * 11 + "C"
		puts " " * 5 + "-" * 34
		puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
		puts " " * 2 + "1" + " " * 2 + "|" + " " * 4 + "#{@A1}" + " " * 5 + "|" + " " * 4 + "#{@B1}" + " " * 5+ "|" + " " * 5 + "#{@C1}" + " " * 4 + "|"
		puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
		puts " " * 5 + "-" * 34
		puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
		puts " " * 2 + "2" + " " * 2 + "|" + " " * 4 + "#{@A2}" + " " * 5 + "|" + " " * 4 + "#{@B2}" + " " * 5+ "|" + " " * 5 + "#{@C2}" + " " * 4 + "|"
		puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
		puts " " * 5 + "-" * 34
		puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
		puts " " * 2 + "3" + " " * 2 + "|" + " " * 4 + "#{@A3}" + " " * 5 + "|" + " " * 4 + "#{@B3}" + " " * 5+ "|" + " " * 5 + "#{@C3}" + " " * 4 + "|"
		puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
		puts " " * 5 + "-" * 34

		puts "Quel est ton nom, joueur 1 ?"
		@player1 = gets.chomp.to_s
		puts "Et toi petit joueur 2, comment t'appelles-tu ?"
		@player2 = gets.chomp.to_s

		names = { :player1 => @player1, :player2 => @player2}
		return names 
	end 

	def play_game 
	puts "C'est parti mes chéris"


	end 



end 





















