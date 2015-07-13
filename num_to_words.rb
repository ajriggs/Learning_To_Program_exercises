def english_number number
  # we accept numbers from 0 to 100.
  if number < 0
    return "Please enter a number zero or greater."
  elsif number == 0
    return 'zero'
  end
  num_string = '' # This is the string we'll return after all calculations
  # 'remaining' is how much of the number we still have remaining to write out.
  # 'write' is the part we are writing out right now.
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    remaining = number
  write = remaining/1000000
  remaining = remaining - write*1000000
  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'
    if remaining > 0
      num_string = num_string + ' '
    end
  end
  write = remaining/1000
  remaining = remaining - write*1000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if remaining > 0
      num_string = num_string + ' '
    end
  end
  write = remaining/100
  remaining = remaining - write*100
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if remaining > 0
      num_string = num_string + ' '
    end
  end
  write = remaining/10
  remaining = remaining - write*10
  if write > 0
    if ((write == 1) and (remaining > 0))
      num_string = num_string + teenagers[remaining-1]
      remaining = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if remaining > 0
      num_string = num_string + '-'
    end
  end
  write = remaining
  remaining = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end
puts english_number(1000)
puts english_number(100)
puts english_number(44)
puts english_number(77)
puts english_number(123)
puts english_number(999)
puts english_number(9999999)
puts english_number(1)
puts english_number(12)
puts english_number(10)
puts english_number(432)
puts english_number(98)
puts english_number(10000)
puts english_number(1000)
