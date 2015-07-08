array = []
is_blank = false
while is_blank == false
  input = gets.chomp
  if input == ''
    is_blank = true
    break
  else array.push input
  end
end
puts array.sort
