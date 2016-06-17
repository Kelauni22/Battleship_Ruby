require './lib/BattleshipClass.rb'

BattlshipProgram = Battleship.new


#make base grid

print "\n"

Basegrid = Array.new (10){Array.new(10){true}}
Basegrid.each do |array|
	array.each do |y|
	print "0"
	end
	print "\n"
end

print "\n"

#make false ships

Basegrid[0][4] = false
Basegrid[5][9] = false
Basegrid[1][10] = false
Basegrid[8][7] = false
Basegrid[3][5] = false
Basegrid[6][2] = false
Basegrid[6][0] = false
Basegrid[0][9] = false
Basegrid[3][8] = false
Basegrid[2][4] = false
Basegrid[9][3] = false


#ask for input
puts ("Pick a coordinate x")
x_choice = gets.chomp.to_i
puts ("Pick a coordinate y")
y_choice = gets.chomp.to_i

#change board


Newgrid = Array.new(10){Array.new(10)}
if Basegrid[x_choice][y_choice] == false

	system "clear"
	print "\n"
	Newgrid[x_choice][y_choice] = true
	
	Newgrid.each do |array|
		array.each do |y|
		 if Newgrid[x_choice][y_choice] == true
			print "*"
		  else 
			print "0"
		 end
		end
		print "\n"	
	end
	
	print "\n"
else 

	puts "Sorry, that was a miss! Would you like to try again? Type 'yes' or 'no'"
	input = gets.chomp
	if input == "yes" then abort()
	end
	
end



	


#create loop