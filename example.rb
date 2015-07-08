puts 'Hello there, and what\' s your first name?'
first_name = gets.chomp
puts 'How about your middle name?'
middle_name = gets.chomp
puts '...and lastly, could I have your last name too?'
last_name = gets.chomp
puts "ah, so your name is " + first_name + ' ' + middle_name + ' ' + last_name + '? I like the sound of that! There are exactly ' + (first_name.length + middle_name.length + last_name.length).to_s + ' characters in your name.'
