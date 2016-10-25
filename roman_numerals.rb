def convert_to_roman(num, options = {:modern => false})
  string =""
  new_num = num
  if options[:modern] == false
      until new_num < 1
          if new_num >= 1000
          new_num = new_num - 1000
          string = string + "M"
        elsif new_num >= 500
          new_num = new_num - 500
          string = string + "D"
        elsif new_num >= 100
          new_num = new_num - 100
          string = string + "C"
        elsif new_num >= 50
          new_num = new_num - 50
          string = string + "L"
        elsif new_num >= 10
          new_num = new_num - 10
          string = string + "X"
        elsif new_num >= 5
          new_num = new_num - 5
          string = string + "V"
        elsif new_num >= 1
          new_num = new_num - 1
          string = string + "I"
        end
      end

  elsif options[:modern] == true
      until new_num < 1
          if new_num >= 1000
            new_num = new_num - 1000
            string = string + "M"
          elsif new_num >= 900
            new_num = new_num - 900
            string = string + "CM"
          elsif new_num >= 500
            new_num = new_num - 500
            string = string + "D"
          elsif new_num >= 400
            new_num = new_num - 400
            string = string + "CD"
          elsif new_num >= 100
            new_num = new_num - 100
            string = string + "C"
          elsif new_num >= 90
            new_num = new_num - 90
            string = string + "XC"
          elsif new_num >= 50
            new_num = new_num - 50
            string = string + "L"
          elsif new_num >= 49
            new_num = new_num - 49
            string = string + "XLIX"
          elsif new_num >= 44
            new_num = new_num - 44
            string = string + "XLIV"
          elsif new_num >= 10
            new_num = new_num - 10
            string = string + "X"
          elsif new_num == 9
            new_num = new_num - 9
            string = string + "IX"
          elsif new_num >= 5
            new_num = new_num - 5
            string = string + "V"
          elsif new_num == 4
            new_num = new_num - 4
            string = string + "IV"
          elsif new_num >= 1
            new_num = new_num - 1
            string = string + "I"
          end
         #return string
      end

  else
    p "invalid"
  end
  string
end
