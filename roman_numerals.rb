def convert_to_roman(arabic_number)
  output = ''
  while arabic_number > 0

    i = arabic_number / 1000
    arabic_number = arabic_number % 1000
    i.times do
      output << "M"
    end

    i = arabic_number / 500
    arabic_number = arabic_number % 500
    i.times do
      output << "D"
    end

    i = arabic_number / 100
    arabic_number = arabic_number % 100
    i.times do
      output << "C"
    end

    i = arabic_number / 50
    arabic_number = arabic_number % 50
    i.times do
      output << "L"
    end

    i = arabic_number / 10
    arabic_number = arabic_number % 10
    i.times do
      output << "X"
    end

    i = arabic_number / 5
    arabic_number = arabic_number % 5
    i.times do
      output << "V"
    end

    i = arabic_number / 1
    arabic_number = arabic_number % 1
    i.times do
      output << "I"
    end

  end
  output
end

p convert_to_roman(2554)
