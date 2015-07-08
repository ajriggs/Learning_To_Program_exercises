new_list = ['a', 'A', 'name', 'face', 'place', 'race', 'taste', 'haste', 'zenith', 'Face', 'b', 'B']

def loop_sort list
  unsorted_words = list
  puts "loop sort input: " + unsorted_words.to_s
  puts
  puts
  sorted_words = Array.new
  current_smallest = Array.new
#finds and returns the smallest word currently inside the unsorted_words array
  while unsorted_words.count > 0
    current_smallest.push(unsorted_words.pop)
    unsorted_words.each do |potential_smallest|
      if potential_smallest < current_smallest[0]
        unsorted_words.push(current_smallest.pop)
        current_smallest.push(potential_smallest)
        unsorted_words.delete(potential_smallest)
      end
    end
    sorted_words.push(current_smallest[0])
    current_smallest.clear
  end
  puts "loop sort output: "+ sorted_words.to_s
end

puts
puts
loop_sort(new_list)
puts
puts



#recursive version needs work
def sort some_list
  puts  'recursive sort input: ' + some_list.to_s
  puts
  puts
  recursive_sort some_list, []
end
def recursive_sort unsorted_list, sorted_list
  unsorted_words = unsorted_list
  sorted_words = sorted_list
  current_smallest = Array.new
#finds and returns the smallest word currently inside the unsorted_words array
  current_smallest.push(unsorted_words.pop)
  unsorted_words.each do |potential_smallest|
    if potential_smallest < current_smallest[0]
      unsorted_words.push(current_smallest.pop)
      current_smallest.push(potential_smallest)
      unsorted_words.delete(potential_smallest)
    end
  end
  sorted_words.push(current_smallest[0])
  return
  # current_smallest.clear (likely not needed)
  if unsorted_words.count > 0
    recursive_sort(unsorted_words, sorted_words)
  else
    puts 'recursive sort output: ' + sorted_words.to_s
  end
end
puts
puts
puts
an_array = ['new', 'array', 'being', 'made', 'here']
sort(an_array)
