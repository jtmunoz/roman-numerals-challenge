def convert_to_roman(arabic_number)


  return_array = []
  old_roman = {
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C",
    500 => "D",
    1000 => "M"
  }



  if arabic_number < 5
    arabic_number.times do
      return_array << "I"
    end
  end

 return_array.join

end
