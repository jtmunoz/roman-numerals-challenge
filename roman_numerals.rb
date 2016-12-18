def convert_to_roman(arabic_number, options = {})
  roman_number = ""
  while arabic_number > 0
    if arabic_number >= 1000
      roman_number += "M"
      arabic_number -= 1000
    elsif (arabic_number >= 900) && (options[:modern] == true)
      roman_number += "CM"
      arabic_number -= 900
    elsif arabic_number >= 500
      roman_number += "D"
      arabic_number -= 500
    elsif (arabic_number >= 400) && (options[:modern] == true)
      roman_number += "CD"
      arabic_number -= 400
    elsif arabic_number >= 100
      roman_number += "C"
      arabic_number -= 100
    elsif (arabic_number >= 90) && (options[:modern] == true)
      roman_number += "XC"
      arabic_number -= 90
    elsif arabic_number >= 50
      roman_number += "L"
      arabic_number -= 50
    elsif (arabic_number >= 40) && (options[:modern] == true)
      roman_number += "XL"
      arabic_number -= 40
    elsif arabic_number >= 10
      roman_number += "X"
      arabic_number -= 10
    elsif (arabic_number >= 9) && (options[:modern] == true)
      roman_number += "IX"
      arabic_number -= 9
    elsif arabic_number >= 5
      roman_number += "V"
      arabic_number -= 5
    elsif (arabic_number >= 4) && (options[:modern] == true)
     roman_number += "IV"
     arabic_number -= 4
    elsif arabic_number >= 1
      roman_number += "I"
      arabic_number -= 1
    end
  end
  roman_number
end
  # until arabic_number == 0
     # result = arabic_number / 1000
     # arabic_number - result
# 
     # result = arabic_number / 500
     # arabic_number - result
# 
     # result = arabic_number / 100
     # arabic_number - result
# 
     # result = arabic_number / 50
     # arabic_number - result
# 
     # result = arabic_number / 10
     # arabic_number - result
# 
     # result = arabic_number / 5
     # arabic_number - result
# 
     # result = arabic_number / 1
     # arabic_number - result
# 
  # add_V_to_roman(arabic_number,roman_number)
  # add_I_to_roman(arabic_number,roman_number)
  #elsif arabic_number == 5
  #  roman_number += "V"
#
  #elsif  
  #  arabic_number < 5
  #  result = arabic_number / 1
  #  result.times { roman_number += "I"}
  #end
  #  roman_number
 


# def add_I_to_roman(arabic_number, roman_number)
  # arabic_number.times do |number|
    # roman_number += "I" 
  # end
  # return roman_number
# end
# def add_V_to_roman(arabic_number, roman_number)
  # arabic_number.times do |number|
    # roman_number += "V" 
  # end
  # return roman_number
# end
