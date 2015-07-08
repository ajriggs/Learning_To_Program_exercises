def loop_sort list
  unsorted_words = list
  puts "loop sort input: " + unsorted_words.to_s
  puts
  sorted_words = Array.new
  current_smallest = Array.new
#finds and returns the smallest word currently inside the unsorted_words array
  while unsorted_words.count > 0
    current_smallest.push(unsorted_words.pop)
    unsorted_words.each do |potential_smallest|
      if potential_smallest.downcase < current_smallest[0].downcase
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
new_list = ['new', 'array', 'being', 'made', 'here', 'a', 'A', 'name', 'face', 'place', 'race', 'taste', 'haste', 'zenith', 'Face', 'b', 'B']
puts
loop_sort(new_list)
puts



#still need to force algorithm to prioritize caps over non-caps, while returning all values in their original form
# (regardless of capitalization)
