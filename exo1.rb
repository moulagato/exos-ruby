tableau = []
compteur = 1

until compteur == 1000
	if (compteur % 5 == 0) || (compteur % 3 == 0)
		tableau.push(compteur)
		#puts "#{tableau}"
    else
		#puts "you know nothing Jon Snow"
	end
	compteur += 1
end

somme = tableau.reduce(:+)

if compteur == 1000
	puts "#{somme}"
end
