require 'pry'

puts "Pick a number to convert:"
arabic_number = gets.chomp.to_i

def convert_to_roman(arabic_number, options = {})
  # Your code goes here
  roman_number = ""

  if options[:modern] == true
  	until arabic_number == 0
  		if 1000 - arabic_number <= 100 && 1000 - arabic_number > 0
		# binding.pry
		roman_number << "CM"
		arabic_number = arabic_number - 900
	else
		# binding.pry
		one_thousand = arabic_number / 1000
		one_thousand.times do
			roman_number << "M"
		end
		# binding.pry
		arabic_number = arabic_number - (1000 * one_thousand)
	end

	if 500 - arabic_number <= 100 && 500 - arabic_number > 0
		# binding.pry
		roman_number << "CD"
		arabic_number = arabic_number - 400
	else
		# binding.pry
		five_hundred = arabic_number / 500
		five_hundred.times do
			roman_number << "D"
		end
		# binding.pry
		arabic_number = arabic_number - (500 * five_hundred)
	end


	if 100 - arabic_number <= 10 && 100 - arabic_number > 0
		# binding.pry
		roman_number << "XC"
		arabic_number = arabic_number - 90
	else
		# binding.pry
		one_hundred = arabic_number / 100
		one_hundred.times do
			roman_number << "C"
		end
		# binding.pry
		arabic_number = arabic_number - (100 * one_hundred)
	end

	if 50 - arabic_number <= 10 && 50 - arabic_number > 0
		# binding.pry
		roman_number << "XL"
		arabic_number = arabic_number - 40
	else
		# binding.pry
		fifty = arabic_number / 50
		fifty.times do
			roman_number << "L"
		end
		# binding.pry
		arabic_number = arabic_number - (50 * fifty)

	end

	if 10 - arabic_number <= 1 && 10 - arabic_number > 0
		# binding.pry
		roman_number << "IX"
		arabic_number = arabic_number - 9
	else		
		# binding.pry
		tens = arabic_number / 10 
		tens.times do
			roman_number << "X"	
		end
		# binding.pry
		arabic_number = arabic_number - (10 * tens)
	end

	if 5 - arabic_number == 1
		# binding.pry
		roman_number << "IV"
		arabic_number = arabic_number - 4
	else
		# binding.pry
		fives = arabic_number / 5
		fives.times do
			roman_number << "V"
		end
		# binding.pry
		arabic_number = arabic_number - (5 * fives)
	end	

	ones = arabic_number / 1
	ones.times do 
		roman_number << "I"
		arabic_number = arabic_number - arabic_number
	end
	return roman_number
	end
else
	arabic_number = arabic_number % 1000
	one_thousand = arabic_number / 1000
	one_thousand.times do
		roman_number << "M"
	end

	arabic_number = arabic_number % 1000
	five_hundred = arabic_number / 500
	five_hundred.times do
		roman_number << "D"
	end

	arabic_number = arabic_number % 500
	one_hundred = arabic_number / 100
	one_hundred.times do
		roman_number << "C"
	end

	arabic_number = arabic_number % 100
	fifty = arabic_number / 50
	fifty.times do
		roman_number << "L"
	end

	arabic_number = arabic_number % 50		
	tens = arabic_number / 10 
	tens.times do
		roman_number << "X"
	end
	arabic_number = arabic_number % 10
	fives = arabic_number / 5
	fives.times do
		roman_number << "V"
	end
	arabic_number = arabic_number % 5
	ones = arabic_number / 1
	ones.times do 
		roman_number << "I"
	end

	p roman_number
	end
end

convert_to_roman(arabic_number, modern: true)