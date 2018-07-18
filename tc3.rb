tab = ["","","","","","","","",""]
tabex = ["1","2","3","4","5","6","7","8","9"]
win=0
turn=0
puts "Quel est votre nom?"
player1 = gets.chomp
puts "Choisissez votre signe"
signe = gets.chomp
puts tabex[0..2].to_s
puts tabex[3..5].to_s
puts tabex[6..8].to_s
while (signe!="X" && signe!="O")
  puts "Choisissez X ou O"
  signe = gets.chomp
end
puts "Et le nom de l'opposant"
player2 = gets.chomp
if (signe=="X")
  plx = "#{player1}"
  plo = "#{player2}"
else
  plx = "#{player2}"
  plo = "#{player1}"
end
while ((tab[0]=="" || tab[1]=="" || tab[2]=="" || tab[3]=="" || tab[4]=="" || tab[5]=="" || tab[6]=="" || tab[7]=="" || tab[8]=="") && win==0)
  turn+=1
  if turn.even?
    puts "C'est à vous #{player2}"
  else
    puts "C'est à vous #{player1}"
  end
  x = gets.chomp.to_i - 1
  while tab[x]!=""
    puts "Choisissez une autre case"
    x = gets.chomp.to_i - 1
  end
  tab[x]=signe
  tabex[x]=signe
  puts tabex[0..2].to_s
  puts tabex[3..5].to_s
  puts tabex[6..8].to_s
  if (signe=="X")
    signe="O"
  else
    signe="X"
  end
  if (tab[0]==tab[1] && tab[0]==tab[2] && tab[0]!="" || tab[3]==tab[4] && tab[3]==tab[5] && tab[3]!="" || tab[6]==tab[7] && tab[6]==tab[8] && tab[6]!="" || tab[0]==tab[3] && tab[0]==tab[6] && tab[0]!="" || tab[1]==tab[4] && tab[1]==tab[7] && tab[1]!="" || tab[2]==tab[5] && tab[2]==tab[8] && tab[2]!="" || tab[0]==tab[4] && tab[0]==tab[8] && tab[0]!="" || tab[2]==tab[4] && tab[2]==tab[6] && tab[2]!="")
    win=1
  end
end
if win==1
  if (signe=="X")
    puts "fin de la partie, #{plo} a gagné!"
  else
    puts "fin de la partie, #{plx} a gagné!"
  end
else
  puts "Bravo!, un bon match vous deux!"
end