while question = gets.chomp
  if question == 'BYE BYE BYE'
    puts 'SEE YOU AT MY FUNERAL!'
    break
  elsif question == 'BYE BYE' || question == 'BYE'
  elsif question == question.upcase
    year = (rand(20)+1930).to_s
    puts 'NO, NOT SINCE ' + year + '!'
  else
    puts 'HUH?! SPEAK UP SONNY!'
  end
end
