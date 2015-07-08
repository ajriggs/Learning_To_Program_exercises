def loop_shuffle an_list
  not_shuffled = an_list
  shuffled = Array.new
  # i=10
  # while i > 0
  #  i -= 1
    while not_shuffled.count > 1 do
      current_rand = rand(not_shuffled.count)
      shuffled.push(not_shuffled[current_rand])
      #need to delete by index, not value, so that no value is randomly pushed more than once
      not_shuffled.delete_at(current_rand)
    end
    shuffled.push(not_shuffled.pop)
  # end
end
list = ['new', 'array', 'being', 'made', 'here', 'a', 'A', 'name', 'face', 'place', 'race', 'taste', 'haste', 'zenith', 'Face', 'b', 'B']
puts (loop_shuffle(list)).to_s
