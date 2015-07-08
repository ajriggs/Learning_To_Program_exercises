puts "For what year should I begin calculating?"
start_year = gets.chomp.to_i
puts 'OK, and what is the last year I should include?'
end_year = gets.chomp.to_i
puts 'calculating...'
leap_year = start_year
while start_year < end_year
  if leap_year % 100 == 0 && leap_year % 400 == 0
    puts leap_year.to_s + ' '
    break if leap_year >= end_year
  elsif leap_year % 100 == 0 && leap_year % 400 != 0
    break if leap_year >= end_year
  elsif leap_year % 4 == 0
    puts leap_year.to_s + ' '
    break if leap_year >= end_year
  else
  end
  leap_year += 1
end
