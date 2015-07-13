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

wall_stock = 999999999
while wall_stock > 0
  puts "#{english_number(wall_stock)} bottles of beer on the wall, #{english_number(wall_stock)} bottles of beer!"
  puts "You take one down, pass it around, #{english_number(wall_stock - 1)} bottles of beer on the wall!"
  puts
wall_stock -= 1
end
