#method takes an arabic number converts it into an integer
#takes the integer and creates a string of that length
#with the roman numerals


def convert_to_roman(arabic_number)


hash_number = {
  "1" => "I",
  "5" => "V",
  "10" => "X",
  "50" => "L",
  "100" => "C",
  "500" => "D",
  "1000" => "M"
}

#hash_number["#{arabic_number}"]
if arabic_number >= 1 && arabic_number < 5
  arabic_number.times do |x|
  print hash_number["1"]
  end
elsif
  arabic_number == 5
  print hash_number["5"]
elsif
  arabic_number > 5 && arabic_number < 10
  remainder = arabic_number%5
  print hash_number["5"]
  remainder.times do |x|
  print hash_number["1"]
  end
elsif
  arabic_number == 10
  print hash_number["10"]
elsif
  arabic_number > 10 && arabic_number < 50
  remainder = arabic_number/10
  remainder.times do |x|
  print hash_number["10"]
  end
  other = arabic_number%10
  print convert_to_roman(other)
elsif
  arabic_number == 50
  print hash_number["50"]
elsif
  arabic_number > 50 && arabic_number < 100
  remainder = arabic_number/50
  remainder.times do |x|
  print hash_number["50"]
  end
  other = arabic_number%50
  print convert_to_roman(other)
else
end
end





#
#
#
#
#puts "Please enter a number:"
#arabic_number = gets.chomp.to_i
#
#convert_to_roman(arabic_number)
#
#number 3 is passed in
# 3 * roman_number


