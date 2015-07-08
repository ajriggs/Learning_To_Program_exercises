line_width = 110
puts "Table of Contents".center(line_width)
puts "Chapter 1: Getting Started".ljust(line_width/2) + 'page 1'.rjust(line_width/2)
puts "Chapter 2: Numbers".ljust(line_width/2) + 'page 9'.rjust(line_width/2)
puts "Chapter 3: Letters".ljust(line_width/2) + 'page 13'.rjust(line_width/2)



array = ["Table of Contents", "Chapter 1: Getting Started", 'page 1', "Chapter 2: Numbers", 'page 9', "Chapter 3: Letters", 'page 13']
puts array[0].center(line_width)
puts array[1].ljust(line_width/2) + array[2].rjust(line_width/2)
puts array[3].ljust(line_width/2) + array[4].rjust(line_width/2)
puts array[5].ljust(line_width/2) + array[6].rjust(line_width/2)
