def convert_to_roman(arabic_number)
  # if arabic_number == 1
  #   return 'I'
  # elsif arabic_number == 4
  #   return 'IIII'
  # end
  if arabic_number < 5
    return 'I' * arabic_number
  elsif arabic_number < 10
    return 'V' + ('I' * (arabic_number - 5))
  elsif arabic_number < 50
    num_of_tens = arabic_number / 10
    num_of_fives = (arabic_number % 10) / 5
    num_of_ones = arabic_number % 5
    return ('X' * num_of_tens) + ('V' * num_of_fives) + ('I' * num_of_ones)
  elsif arabic_number < 100
    num_of_fifties = arabic_number / 50
    num_of_tens = (arabic_number % 50) / 10
    num_of_fives = (arabic_number % 10) / 5
    num_of_ones = arabic_number % 5
    return ('L' * num_of_fifties) + ('X' * num_of_tens) + ('V' * num_of_fives) + ('I' * num_of_ones)
  elsif arabic_number < 500
    num_of_hundreds = arabic_number / 100
    num_of_fifties = (arabic_number % 100) / 50
    num_of_tens = (arabic_number % 50) / 10
    num_of_fives = (arabic_number % 10) / 5
    num_of_ones = arabic_number % 5
    return ('C' * num_of_hundreds) + ('L' * num_of_fifties) + ('X' * num_of_tens) + ('V' * num_of_fives) + ('I' * num_of_ones)
  elsif arabic_number < 1000
    num_of_fivehundreds = arabic_number / 500
    num_of_hundreds = (arabic_number % 500) / 100
    num_of_fifties = (arabic_number % 100) / 50
    num_of_tens = (arabic_number % 50) / 10
    num_of_fives = (arabic_number % 10) / 5
    num_of_ones = arabic_number % 5
    return ('D' * num_of_fivehundreds) + ('C' * num_of_hundreds) + ('L' * num_of_fifties) + ('X' * num_of_tens) + ('V' * num_of_fives) + ('I' * num_of_ones)
  end

end

p convert_to_roman(98)
