require 'colorize'

class View

  # Cette méthode permet de donner les règles du jeu au joueur ainsi
  # que de montrer le platzeau aux joueurs avant la partie.
  def start_game
    puts "Voici les règles :"
	puts "- Les 2 joueurs jouent à tour de rôle"
	puts "- Le premier qui parvient à aligner 3 de ses pions à gagner."
	puts "- Impossible de jouer sur une case déjà prise"
	puts " Que le meilleur gagne !"
	puts " Voici le plateau :"
	puts ""
	puts ""
	puts " " * 5 + " " * 5 + "A".colorize(:red) + " " * 10 + "B".colorize(:red) + " " * 11 + "C".colorize(:red)
	puts " " * 5 + "-" * 34
	puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	puts " " * 2 + "1".colorize(:yellow) + " " * 2 + "|" + " " * 4 + " " + " " * 5 + "|" + " " * 4 + " " + " " * 5+ "|" + " " * 5 + " " + " " * 4 + "|"
	puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	puts " " * 5 + "-" * 34
	puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	puts " " * 2 + "2".colorize(:yellow) + " " * 2 + "|" + " " * 4 + " " + " " * 5 + "|" + " " * 4 + " " + " " * 5+ "|" + " " * 5 + " " + " " * 4 + "|"
	puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	puts " " * 5 + "-" * 34
	puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	puts " " * 2 + "3".colorize(:yellow) + " " * 2 + "|" + " " * 4 + " " + " " * 5 + "|" + " " * 4 + " " + " " * 5+ "|" + " " * 5 + " " + " " * 4 + "|"
	puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	puts " " * 5 + "-" * 34
	puts "Quel est ton nom, joueur 1 ?"
	@player1 = gets.chomp.to_s
	puts "Et toi petit joueur 2, comment t'appelles-tu ?"
	@player2 = gets.chomp.to_s

	names = { :player1 => @player1, :player2 => @player2}
	return names 
  end 

end 





















