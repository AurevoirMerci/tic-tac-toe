require 'controller'
require 'colorize'

class Jeu 
  attr_reader :player1, :player2

  # Méthode d'initialisation pour associer une variable aux attributs
  def initialize(player1, player2)
    @player1 = player1
	@player2 = player2
  end

  # Méthode qui va faire tout le fonctionnement du jeu du morpion. Nous nous
  # excusons d'avance d'avoir fait une méthode un peu "barbare". En espérant
  # que nos commentaires vous guident tout au long du code.
  def play_game
  	# On définit une array avec toutes les possibilités possible sur le plateau
  	# On donne une valeur nulle aux valeurs associer aux cases du plateau
  	# On créé les 8 combinaisons gagnantes au morpion dans des arrays
  	# On créé deux arrays pour y mranger les coups des 2 joueurs dedans
  	# On compte le nombre de round de la partie
	possibilities = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
	@A = " "
	@B = " "
	@C = " "
	@D = " "
	@E = " "
	@F = " "
	@G = " "
	@H = " "
	@I = " "
	winning_combination1 = ["A1", "A2", "A3"]
	winning_combination2 = ["A1", "B1", "C1"]
	winning_combination3 = ["A2", "B2", "C2"]
	winning_combination4 = ["A3", "B3", "C3"]
	winning_combination5 = ["B1", "B2", "B3"]
	winning_combination6 = ["C1", "C2", "C3"]
	winning_combination7 = ["A1", "B2", "C3"]
	winning_combination8 = ["A3", "B2", "C1"]
	coups_player1 = []
	coups_player2 = []
	number_of_round = 0

	# Nous faisons une boucle while qui va englober tout le fonctionnement
	# de notre jeu.
	while possibilities != [] || coups_player1 & winning_combination1 != winning_combination1 || coups_player1 & winning_combination1 != winning_combination1 || coups_player1 & winning_combination2 != winning_combination2 || coups_player1 & winning_combination3 != winning_combination3 || coups_player1 & winning_combination4 != winning_combination4 || coups_player1 & winning_combination5 != winning_combination5 || coups_player1 & winning_combination6 != winning_combination6 || coups_player1 & winning_combination7 != winning_combination7 || coups_player1 & winning_combination8 != winning_combination8 || coups_player2 & winning_combination1 != winning_combination1 || coups_player2 & winning_combination2 != winning_combination2 || coups_player2 & winning_combination3 != winning_combination3 || coups_player2 & winning_combination4 != winning_combination4 || coups_player2 & winning_combination5 != winning_combination5 || coups_player2 & winning_combination6 != winning_combination6 || coups_player2 & winning_combination7 != winning_combination7 || coups_player2 & winning_combination8 != winning_combination8

	  if number_of_round < 9

	  	# On fait jouer le premier joueur et si son coup appartient au set
	  	# de possibilités alors on ajoute ce pion à l'array des coups du joueur 1
	  	# puis on delete la case du joueur 1 des possibilités pour que plus
	  	# personne ne puisse jouer sur cette case.
		puts "#{@player1}, où veux-tu jouer?"
		pion_player1 = gets.chomp.to_s
		if possibilities.include?(pion_player1)
		  coups_player1 << pion_player1
		  possibilities.delete(pion_player1)
		else
		  # La boucle while sert à faire rejouer la personne à la fois si elle
		  # joue sur une case déjà remplie ou si ce qu'elle a écrit ne
		  # correspond pas à un case du tout. 	
		  while !possibilities.include?(pion_player1)
			puts "Pas possible boss. Tu joues-où du coup bg?"
			pion_player1 = gets.chomp.to_s  
		  end
		  # Même principe que celui d'au dessus, on enleve la case après avoir
		  # ajouté le pion du joueur 1 dans l'array des coups du joueur 1
		  coups_player1 << pion_player1
		  possibilities.delete(pion_player1)
		end

	  end

	  # S'il y a plus de 9 coups on stop la boucle car ce n'est pas possible 
	  # au morpion
	  if number_of_round == 9
		break
	  end

	  # On pose le pion du joueur 1 en fonction de son coup, il sera représenté
	  # par un X sur le plateau
	  if pion_player1 == "A1"
		@A = "X"
	  elsif pion_player1 == "A2"
		@B = "X"
	  elsif pion_player1 == "A3"
		@C = "X"
   	  elsif pion_player1 == "B1"
		@D = "X"
	  elsif pion_player1 == "B2"
		@E = "X"
	  elsif pion_player1 == "B3"
		@F = "X"
	  elsif pion_player1 == "C1"
		@G = "X"
	  elsif pion_player1 == "C2"
		@H = "X"
	  elsif pion_player1 == "C3"
		@I = "X"
	  end

	  # Enfin, on affiche le plateau juste après le coup du joueur 1
	  # pour que le joueur 2 puisse visualiser le jeu
	  puts " " * 5 + " " * 5 + "A".colorize(:red) + " " * 10 + "B".colorize(:red) + " " * 11 + "C".colorize(:red)
      puts " " * 5 + "-" * 34
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 2 + "1".colorize(:yellow) + " " * 2 + "|" + " " * 4 + @A.colorize(:green) + " " * 5 + "|" + " " * 4 + @D.colorize(:green) + " " * 5+ "|" + " " * 5 + @G.colorize(:green) + " " * 4 + "|"
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 5 + "-" * 34
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 2 + "2".colorize(:yellow) + " " * 2 + "|" + " " * 4 + @B.colorize(:green) + " " * 5 + "|" + " " * 4 + @E.colorize(:green) + " " * 5+ "|" + " " * 5 + @H.colorize(:green) + " " * 4 + "|"
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 5 + "-" * 34
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 2 + "3".colorize(:yellow) + " " * 2 + "|" + " " * 4 + @C.colorize(:green) + " " * 5 + "|" + " " * 4 + @F.colorize(:green) + " " * 5+ "|" + " " * 5 + @I.colorize(:green) + " " * 4 + "|"
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 5 + "-" * 34

	  # On rejoute un nombre de 1 après le tour du joueur 1 au nombre de round
	  number_of_round += 1

	  # Si le coup du joueur 1 entraine une combinaison gagnante alors, 
	  # Cela casse la boucle et renvoie le message de victoire pour le joueur 1.
	  if coups_player1.sort! & winning_combination1 == winning_combination1 || coups_player1.sort! & winning_combination2 == winning_combination2 || coups_player1.sort! & winning_combination3 == winning_combination3 || coups_player1.sort! & winning_combination4 == winning_combination4 || coups_player1.sort! & winning_combination5 == winning_combination5 || coups_player1.sort! & winning_combination6 == winning_combination6 || coups_player1.sort! & winning_combination7 == winning_combination7 || coups_player1.sort! & winning_combination8 == winning_combination8
		break
	  end 

	  # Même fonctionnement pour le coup du joueur 2
	  if number_of_round < 9 

		puts "#{@player2}, où veux-tu jouer?"
		pion_player2 = gets.chomp.to_s
		if possibilities.include?(pion_player2)
		  coups_player2 << pion_player2
		  possibilities.delete(pion_player2)
		  number_of_round += 1
		else
		  while !possibilities.include?(pion_player2)
			puts "Pas possible boss. Tu joues-où du coup bg?"
			pion_player2 = gets.chomp.to_s  
		  end
		  coups_player2 << pion_player2
		  possibilities.delete(pion_player2)
		  number_of_round += 1
		end
	  end

	  if pion_player2 == "A1"
		@A = "Y"
	  elsif pion_player2 == "A2"
		@B = "Y"
	  elsif pion_player2 == "A3"
		@C = "Y"
	  elsif pion_player2 == "B1"
		@D = "Y"
	  elsif pion_player2 == "B2"
		@E = "Y"
	  elsif pion_player2 == "B3"
		@F = "Y"
	  elsif pion_player2 == "C1"
		@G = "Y"
	  elsif pion_player2 == "C2"
		@H = "Y"
	  elsif pion_player2 == "C3"
		@I = "Y"
	  end

	  puts " " * 5 + " " * 5 + "A".colorize(:red) + " " * 10 + "B".colorize(:red) + " " * 11 + "C".colorize(:red)
	  puts " " * 5 + "-" * 34
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 2 + "1".colorize(:yellow) + " " * 2 + "|" + " " * 4 + @A.colorize(:green) + " " * 5 + "|" + " " * 4 + @D.colorize(:green) + " " * 5 + "|" + " " * 5 + @G.colorize(:green) + " " * 4 + "|"
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 5 + "-" * 34
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 2 + "2".colorize(:yellow) + " " * 2 + "|" + " " * 4 + @B.colorize(:green) + " " * 5 + "|" + " " * 4 + @E.colorize(:green) + " " * 5+ "|" + " " * 5 + @H.colorize(:green) + " " * 4 + "|"
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 5 + "-" * 34
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
	  puts " " * 2 + "3".colorize(:yellow) + " " * 2 + "|" + " " * 4 + @C.colorize(:green) + " " * 5 + "|" + " " * 4 + @F.colorize(:green) + " " * 5+ "|" + " " * 5 + @I.colorize(:green) + " " * 4 + "|"
	  puts " " * 5 + "|" + " " * 10 + "|" + " " * 10 + "|" + " " * 10 + "|"
      puts " " * 5 + "-" * 34

	  if coups_player2.sort! & winning_combination1 == winning_combination1 || coups_player2.sort! & winning_combination2 == winning_combination2 || coups_player2.sort! & winning_combination3 == winning_combination3 || coups_player2.sort! & winning_combination4 == winning_combination4 || coups_player2.sort! & winning_combination5 == winning_combination5 || coups_player2.sort! & winning_combination6 == winning_combination6 || coups_player2.sort! & winning_combination7 == winning_combination7 || coups_player2.sort! & winning_combination8 == winning_combination8
		break
	  end 

    end

    # Si les coups d'un joueur contiennent une combinaison gagnante alors
    # ce joueur a gagné !
    # Si les possibilités sont vides alors personne n'a gagné la partie
	if coups_player1.sort! & winning_combination1 == winning_combination1 || coups_player1.sort! & winning_combination2 == winning_combination2 || coups_player1.sort! & winning_combination3 == winning_combination3 || coups_player1.sort! & winning_combination4 == winning_combination4 || coups_player1.sort! & winning_combination5 == winning_combination5 || coups_player1.sort! & winning_combination6 == winning_combination6 || coups_player1.sort! & winning_combination7 == winning_combination7 || coups_player1.sort! & winning_combination8 == winning_combination8
	  puts "#{@player1} a gagné. #{@player2} tu me deg, achète toi un cerveau stp"
	elsif coups_player2.sort! & winning_combination1 == winning_combination1 || coups_player2.sort! & winning_combination2 == winning_combination2 || coups_player2.sort! & winning_combination3 == winning_combination3 || coups_player2.sort! & winning_combination4 == winning_combination4 || coups_player2.sort! & winning_combination5 == winning_combination5 || coups_player2.sort! & winning_combination6 == winning_combination6 || coups_player2.sort! & winning_combination7 == winning_combination7 || coups_player2.sort! & winning_combination8 == winning_combination8
	  puts "#{@player2} a gagné!!!. #{@player1} tu me deg, achète toi un cerveau stp"
	elsif possibilities == [] 
	  puts "C'est fini ! Pas de gagnant, vous êtes tous les deux nuls hihi"
	end

  end
  
end