require 'controller'

class Jeu 
	attr_reader :player1, :player2

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
	end

	def play_game
	possibilities = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
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

	while possibilities != [] || !coups_player1 = winning_combination1 || !coups_player1 == winning_combination2 || !coups_player1 == winning_combination3 || !coups_player1 == winning_combination4 || !coups_player1 == winning_combination5 || !coups_player1 == winning_combination6 || !coups_player1 == winning_combination7 || !coups_player1 == winning_combination8 || !coups_player2 == winning_combination1 || !coups_player2 == winning_combination2 || !coups_player2 == winning_combination3 || !coups_player2 == winning_combination4 || !coups_player2 == winning_combination5 || !coups_player2 == winning_combination6 || !coups_player2 == winning_combination7 || !coups_player2 == winning_combination8 

		puts "Joueur 1, où veux-tu jouer?"
		pion_player1 = gets.chomp.to_s

		if possibilities.include?(pion_player1) 
			coups_player1 << pion_player1
			possibilities.delete(pion_player1)
			puts "Coup du player 1 :"
			puts coups_player1
			puts "Possibilités restantes : "
			puts possibilities
			number_of_round += 1
			puts "nombre de rounds:"
			puts number_of_round

		else puts "Pas possible boss"
		end 

		if number_of_round < 9 
			puts "Joueur 2, où veux-tu jouer?"
			pion_player2 = gets.chomp.to_s

			if possibilities.include?(pion_player2)
				coups_player2 << pion_player2
				possibilities.delete(pion_player2)
				puts "Coup du player 2 :"
				puts coups_player2
				puts "Possibilités restantes : "
				puts possibilities
				number_of_round += 1
				puts "nombre de rounds:"
				puts number_of_round

			else
				while !possibilities.include?(pion_player2)
					puts "Pas possible boss. Tu joues-où du coup bg?"
					pion_player2 = gets.chomp.to_s  
				end
				coups_player2 << pion_player2
				possibilities.delete(pion_player2)
				puts "Coup du player 2 :"
				puts coups_player2
				puts "Possibilités restantes : "
				puts possibilities
				number_of_round += 1
				puts "nombre de rounds:"
				puts number_of_round
			end
		end
end


if possibilities == [] 
	puts "C'est fini ! Pas de gagnant, vous êtes tous les deux nuls hihi"
end 

if coups_player1 == winning_combination1 || coups_player1 == winning_combination2 || coups_player1 == winning_combination3 || coups_player1 == winning_combination4 || coups_player1 == winning_combination5 || coups_player1 == winning_combination6 || coups_player1 == winning_combination7 || coups_player1 == winning_combination8 
	puts "#{@player1} a gagné. #{@player2} tu me deg, achète toi un cerveau stp"
elsif coups_player2 == winning_combination1 || coups_player2 == winning_combination2 || coups_player2 == winning_combination3 || coups_player2 == winning_combination4 || coups_player2 == winning_combination5 || coups_player2 == winning_combination6 || coups_player2 == winning_combination7 || coups_player2 == winning_combination8 
	puts "#{@player2} a gagné. #{@player1} tu me deg, achète toi un cerveau stp"
end


end
end