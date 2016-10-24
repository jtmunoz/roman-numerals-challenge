puts "Pick a number to convert:"
  arabic_number = gets.chomp.to_i

def convert_to_roman(arabic_number)
  # Your code goes here
  roman_number = ""

  		remainder = arabic_number % 1000
  		one_thousand = remainder / 1000
  		one_thousand.times do
  			roman_number << "M"
		end

  		remainder = arabic_number % 1000
  		five_hundred = remainder / 500
  		five_hundred.times do
  			roman_number << "D"
		end

  		remainder = arabic_number % 500
  		one_hundred = remainder / 100
  		one_hundred.times do
  			roman_number << "C"
		end

  		remainder = arabic_number % 100
  		fifty = remainder / 50
  		fifty.times do
  			roman_number << "L"
		end

  		remainder = arabic_number % 50		
		tens = remainder / 10 
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