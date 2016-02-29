def break_up_integer input
  puts "Please enter an integer"
  input = gets.chomp.to_i
  puts "input integer: #{input}"
  if input > 0
    thousands = input.abs / 1000
    hundreds = input.abs % 1000 / 100
    tens = input.abs % 100 / 10
    ones = input.abs % 10
    puts "thousands place contains #{thousands},\n
          hundreds place contains #{hundreds},\n
          tens place contains #{tens},\n
          and the ones place contains #{ones}."
  else
    puts 'enter an integer greater than zero!'
  end
  puts
end
break_up_integer('')
