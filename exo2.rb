puts "texte por favor :" 
texte = gets.chomp  
puts "clé de cryptage ?"
var = gets.chomp.to_i

letters = texte.split("")

letters.each do |letter|
	l = letter.ord
	lvar = l + var 
	num = l % var

	if (l > 64) && (l < 91) #majuscule
		if  lvar > 90
			print "#{(num.to_i + 64).chr}"
		elsif lvar < 91
			print "#{lvar.chr}"
		end
	elsif (l > 96) && (l < 123) #minuscule
		if  lvar > 122
			print "#{(num.to_i + 95).chr}"
		elsif lvar < 123
			print "#{lvar.chr}"
		end
	else #on garde
		print l.chr
	end
end