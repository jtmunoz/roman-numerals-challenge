def convert_to_roman(arabic_number)
  # Your code goes here
  counter = arabic_number
  rom_num = ""
 # create hash for reference
  num_hash = {
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C",
    500 => "D",
    1000 => "M"
  }
 while counter > 0
    if counter >= 1 && counter < 5
      rom_num += num_hash[1]
      counter -= 1
    elsif counter >= 5 && counter < 10
      rom_num += num_hash[5]
      counter -= 5
    end
 end

 rom_num
end

p convert_to_roman(9)
