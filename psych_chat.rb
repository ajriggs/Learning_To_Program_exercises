def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    elsif reply == 'no'
      return false
    else
      puts 'Please answer "yes" or "no".'
    end
  end
answer
end
puts 'Hello, and thanks..'
puts
ask "do you like frijoles?"
ask "do you like carnitas?"
wet_bed = ask "do you wet the bed?"
ask "do you like to eat tacos?"
puts "just a few more questions!"
ask 'do you like to eat burritos?'
ask 'do you like menudo?'
ask 'do you eat fajitas?'
puts
puts 'DEBRIEFING: '
puts 'thanks for your personal information!'
puts
puts wet_bed
