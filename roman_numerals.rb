#method takes an arabic number converts it into an integer
#takes the integer and creates a string of that length
#with the roman numerals
require 'pry'

def convert_to_roman(arabic_number)

 result = ''

  hash_number = {
    "1" => "I",
    "5" => "V",
    "10" => "X",
    "50" => "L",
    "100" => "C",
    "500" => "D",
    "1000" => "M"
  }

  while arabic_number > 0
    if arabic_number >= 1 && arabic_number < 5

      arabic_number.times do |x|
        arabic_number = 0
        result += hash_number["1"]
      end

    elsif arabic_number == 5
      arabic_number = arabic_number - 5
      result += hash_number["5"]
    elsif arabic_number > 5 && arabic_number < 10
      arabic_number = arabic_number - 5
      result += hash_number["5"]

    elsif arabic_number == 10
      arabic_number = arabic_number - 10
      result += hash_number["10"]
    elsif arabic_number > 10 && arabic_number < 50
      multiplier = arabic_number / 10

      multiplier.times do |x|
        arabic_number = arabic_number - 10
        result += hash_number["10"]
      end

    elsif arabic_number == 50
      arabic_number = arabic_number - 50
      result += hash_number["50"]
    elsif arabic_number > 50 && arabic_number < 100
      multiplier = arabic_number / 50

      multiplier.times do |x|
        arabic_number = arabic_number - 50
        result +=  hash_number["50"]
      end
    else
    end
  end
  result
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


