def convert_to_roman(arabic_number, options = {})
  # Your code goes here

modern = options[:modern] || false


  rom_num = ""
 # create hash for reference
  # num_hash = {
  #   1 => "I",
  #   5 => "V",
  #   10 => "X",
  #   50 => "L",
  #   100 => "C",
  #   500 => "D",
  #   1000 => "M"
  # }

  num_hash = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I"
  }


  while arabic_number > 0
    num_hash.each do |int, str|
      if arabic_number >= int
        rom_num += str
        arabic_number -= int
        break
      end
    end
  end

 # while arabic_number > 0
 #    if arabic_number >= 1 && arabic_number < 5
 #      rom_num += num_hash[1]
 #      arabic_number -= 1
 #    elsif arabic_number >= 5 && arabic_number < 10
 #      rom_num += num_hash[5]
 #      arabic_number -= 5
 #    elsif arabic_number >= 10 && arabic_number < 50
 #      rom_num += num_hash[10]
 #      arabic_number -= 10
 #    end
 # end

 if modern == true

  modern_hash = {
    "DCCCC" => "CM",
    "CCCC" => "CD",
    "LXXXX" => "XC",
    "XXXX" => "XL",
    "VIIII" => "IX",
    "IIII" => "IV"
  }
  modern_hash.each do |old, news|
    if rom_num.include? old
      p old
      rom_num.sub!(old, news)
      p old
      end
    end
end

 rom_num
end

p convert_to_roman(444, {modern: true})
