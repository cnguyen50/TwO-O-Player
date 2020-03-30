require './players'
require './questions'

Player1 = Players.new('Player1')
Player2 = Players.new('Player2')

def start(player)
  puts "#{player.name}: What does #{Question.num1} plus #{Question.num2} equal?"
  answer = gets.chomp

  if Question.answer(answer)
    puts "✅✅✅That's correct!!!!✅✅✅"
  else
    puts "❌❌❌Sorry that's incorrect❌❌❌"
    player.wrong
  end
  puts "#{Player1.name}: #{Player1.life}/3 vs #{Player2.name}: #{Player2.life}/3"
end

loop do
  start(Player1)
  break puts "Player 2 wins with a score of #{Player2.life}/3" if (Player1.loss)
  start(Player2)
  break puts "Player 1 wins with a score of #{Player1.life}/3" if (Player2.loss)
  puts "----- NEXT TURN -----"
end

puts "----- GAME OVER -----"
puts "Good bye!"