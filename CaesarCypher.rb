puts "Enter a phrase to be encrypted"
phrase = gets.chomp
puts "Enter a number of letters to increment each letter by"
key = gets.chomp
key.to_i
def caesar_cypher (x, key)
	x = x.split(//)
	result = []
	x.each do |letter|
		
		letter = letter.ord.to_i
		key = key.to_i
		 if letter.between?(65,90)
		 	letter+=key
		 	if letter > 90
		 		temp = letter- 90
		 		letter = 64 + temp
		 	end
		 
		elsif letter.between?(97,122)
			letter+=key
		 	if letter > 122
		 		temp = letter- 122
		 		letter = 96 + temp
		 	end
		 end 
		 result.push(letter.chr)
		
	end
	return result.join
end
result = caesar_cypher(phrase, key)
puts result