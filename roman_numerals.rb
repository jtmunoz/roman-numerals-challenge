def convert_to_roman(arabic_number, options = {})
  # Your code goes here
  result = ""
  while arabic_number > 0
    if arabic_number >= 1000
      result += "M"
      arabic_number -= 1000
      elsif (arabic_number >= 900) && (options[:modern] == true)
      result += "CM"
      arabic_number -= 900
      elsif arabic_number >= 500
      result += "D"
      arabic_number -= 500
      elsif (arabic_number >= 400) && (options[:modern] == true)
      result += "CD"
      arabic_number -= 400
      elsif arabic_number >= 100
      result += "C"
      arabic_number -= 100
      elsif (arabic_number >= 90) && (options[:modern] == true)
      result += "XC"
      arabic_number -= 90
      elsif arabic_number >= 50
      result += "L"
      arabic_number -= 50
      elsif (arabic_number >= 40) && (options[:modern] == true)
      result += "XL"
      arabic_number -= 40
      elsif arabic_number >= 10
      result += "X"
      arabic_number -= 10
      elsif (arabic_number >= 9) && (options[:modern] == true)
      result += "IX"
      arabic_number -= 9
      elsif arabic_number >= 5
      result += "V"
      arabic_number -= 5
      elsif (arabic_number >= 4) && (options[:modern] == true)
      result += "IV"
      arabic_number -= 4
      elsif arabic_number >= 1
      result += "I"
      arabic_number -= 1
    end
  end
  p result
end


convert_to_roman(66)
convert_to_roman(2016, {modern: true})
