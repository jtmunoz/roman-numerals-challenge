def convert_to_roman(arabic_number)
  output = ''
  while arabic_number > 0
    output << "I"
    arabic_number -= 1
  end
  output
end

p convert_to_roman(4)
