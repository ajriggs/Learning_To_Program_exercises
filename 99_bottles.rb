wall_stock = 99
while wall_stock > 0
  puts "#{wall_stock.to_s} bottles of beer on the wall, #{wall_stock} bottles of beer!"
  puts "You take one down, pass it around, #{(wall_stock - 1).to_s} bottles of beer on the wall!"
wall_stock -= 1
end
