puts "Pick a number to convert:"
  arabic_number = gets.chomp.to_i

def convert_to_roman(arabic_number)
  # Your code goes here
  roman_number = ""
  # 	if arabic_number < 5
	 # 	 arabic_number.times do
	 #  		roman_number << "I"
  # 		end
  # 	elsif arabic_number >= 5 && arabic_number < 10
  # 		roman_number << "V"
  # 		# arabic_number = arabic_number % 9
  # 		(arabic_number % 5).times do
	 #  		roman_number << "I"
		# end
	# if arabic_number <= 49
		tens = arabic_number / 10 
		tens.times do
			roman_number << "X"
		end
		remainder = arabic_number % 10
		fives = remainder / 5
		fives.times do
			roman_number << "V"
		end
		remainder = arabic_number % 5
		ones = remainder / 1
		ones.times do 
			roman_number << "I"
		end
	# end
  p roman_number
end

convert_to_roman(arabic_number)