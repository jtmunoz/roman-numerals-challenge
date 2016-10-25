def convert_to_roman(arabic_number, options = {modern: false})

  if options[:modern] == false
    old_roman(arabic_number)
  else
    new_roman(arabic_number)
  end

end

def old_roman(arabic_number)
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

  #in the hash, return value
  if old_roman.has_key?(arabic_number)
    return_array << old_roman[arabic_number]
  else
    number_array = arabic_number.to_s.split("")
    #ones place
    if number_array[-1].to_i >= 5
      return_array.push("V")
      (number_array[-1].to_i%5).times do
        return_array << "I"
      end
    else
      (number_array[-1].to_i%5).times do
        return_array << "I"
      end
    end

    #tens place
    if number_array[-2] != nil
      if number_array[-2].to_i >= 5
        return_array.unshift("L")
        (number_array[-2].to_i%5).times do
          return_array.insert(1,"X")
        end
      else
        (number_array[-2].to_i%5).times do
        return_array.unshift("X")
        end
      end
    end

    #hundreds place
    if number_array[-3] != nil
      if number_array[-3].to_i >= 5
        return_array.unshift("D")
        (number_array[-3].to_i%5).times do
          return_array.insert(1,"C")
        end
      else
        (number_array[-3].to_i%5).times do
        return_array.unshift("C")
        end
      end
    end

    #thousands place
    if number_array[-4] != nil
      (number_array[-4].to_i).times do
        return_array.insert(0,"M")
      end
    end

  end

 return_array.join

end

def new_roman(arabic_number)
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

  #in the hash, return value
  if old_roman.has_key?(arabic_number)
    return_array << old_roman[arabic_number]
  else
    number_array = arabic_number.to_s.split("")
    #ones place
    if number_array[-1].to_i == 4
      return_array << "IV"
    elsif number_array[-1].to_i == 9
      return_array << "IX"
    elsif number_array[-1].to_i >= 5
      return_array.push("V")
      (number_array[-1].to_i%5).times do
        return_array << "I"
      end
    else
      (number_array[-1].to_i%5).times do
        return_array << "I"
      end
    end

    #tens place
    if number_array[-2] != nil
      if number_array[-2].to_i == 4
        return_array.unshift("XL")
      elsif number_array[-2].to_i == 9
        return_array.unshift("XC")
      elsif number_array[-2].to_i >= 5
        return_array.unshift("L")
        (number_array[-2].to_i%5).times do
          return_array.insert(1,"X")
        end
      else
        (number_array[-2].to_i%5).times do
        return_array.unshift("X")
        end
      end
    end

    #hundreds place
    if number_array[-3] != nil
      if number_array[-3].to_i == 4
        return_array.unshift("CD")
      elsif number_array[-3].to_i == 9
        return_array.unshift("CM")
      elsif number_array[-3].to_i >= 5
        return_array.unshift("D")
        (number_array[-3].to_i%5).times do
          return_array.insert(1,"C")
        end
      else
        (number_array[-3].to_i%5).times do
        return_array.unshift("C")
        end
      end
    end

    #thousands place
    if number_array[-4] != nil
      (number_array[-4].to_i).times do
        return_array.insert(0,"M")
      end
    end

  end

 return_array.join
end

