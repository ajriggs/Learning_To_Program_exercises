filename = 'someName.txt'
test_string = 'This is an string' +
              'And I\'m using horrid indentation' +
File.open filename, 'w' do |f|
  f.write test_string
end
read_string = File.read filename
puts(read_string == test_string)
