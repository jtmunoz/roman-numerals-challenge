def helper(symbol,num)
  str = ""
  num.times do
    str += symbol
  end
  return str
end

def convert_to_roman(arabic_number)
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
  return str
end

convert_to_roman(20)
