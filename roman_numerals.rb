def helper(symbol,num)
  str = ""
  num.times do
    str += symbol
  end
  return str
end

def convert_to_roman(arabic_number, options = {})
  if options[:modern] == true
    arabic = [1000,500,100,50,10,5]
    roman = ["M","D","C","L","X","V","I"]
    str = ""

    loop do
      if arabic_number / 1000 >= 1
        str+= "M"
        arabic_number -= 1000
      elsif arabic_number / 500 >= 1
        if arabic_number >= 900
          str += "CM"
          arabic_number -= 900
        else
          str+= "D"
          arabic_number -= 500
        end
      elsif arabic_number / 100 >= 1
        if arabic_number >= 400
          str += "CD"
          arabic_number -= 400
        else
          str+= "C"
          arabic_number -= 100
        end
      elsif arabic_number / 50 >= 1
        if arabic_number >= 90
          str += "XC"
          arabic_number -= 90
        else
          str+= "L"
          arabic_number -= 50
        end
      elsif arabic_number / 10 >= 1
        if arabic_number >= 40
          str += "XL"
          arabic_number -= 40
        else
          str+= "X"
          arabic_number -= 10
        end
      elsif arabic_number / 5 >= 1
        if arabic_number == 9
          str += "IX"
          arabic_number = 0
        else
          str+= "V"
          arabic_number -= 5
        end
      else
        if arabic_number == 4
          str += "IV"
        else
          str+= helper("I",arabic_number)
        end
        arabic_number = 0
      end
      break if arabic_number == 0
    end
  else
    str = ""
    loop do
      if arabic_number / 1000 >= 1
        str+= "M"
        arabic_number -= 1000
      elsif arabic_number / 500 >= 1
        str+= "D"
        arabic_number -= 500
      elsif arabic_number / 100 >= 1
        str+= "C"
        arabic_number -= 100
      elsif arabic_number / 50 >= 1
        str+= "L"
        arabic_number -= 50
      elsif arabic_number / 10 >= 1
        str+= "X"
        arabic_number -= 10
      elsif arabic_number / 5 >= 1
        str+= "V"
        arabic_number -= 5
      else
        str+= helper("I",arabic_number)
        arabic_number = 0
      end
      break if arabic_number == 0
    end
  end
  return str
end

puts convert_to_roman(400, {modern:true})
