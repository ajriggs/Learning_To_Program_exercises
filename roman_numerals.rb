def to_numeral number
  number = number.to_i.abs
  (number/1000).times do
    print 'M'
  end
  ((number % 1000)/500).times do
    print 'D'
  end
  ((number % 500)/100).times do
    print 'C'
  end
  ((number % 100)/50).times do
    print 'L'
  end
  ((number % 50)/10).times do
  print 'X'
  end
  ((number % 10)/5).times do
  print 'V'
  end
  (number % 5).times do
  print 'I'
  end
  puts
end
to_numeral gets.chomp

def to_new_numeral number
  number = number.to_i.abs
  (number % 5).times do
  print 'I'
  end
  ((number % 10)/5).times do
  print 'V'
  end
  ((number % 50)/10).times do
  print 'X'
  end
  ((number % 100)/50).times do
    print 'L'
  end
  ((number % 500)/100).times do
    print 'C'
  end
  ((number % 1000)/500).times do
    print 'D'
  end
  (number/1000).times do
    print 'M'
  end
  puts
end
to_new_numeral gets.chomp
