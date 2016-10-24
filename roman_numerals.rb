def convert_to_roman(num)
  string =""
  new_num = num
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
  p string
end
