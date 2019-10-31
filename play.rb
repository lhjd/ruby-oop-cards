require './game'
require './cards'

playing = true

game = Game.new
puts "what is your name"
name = gets.chomp

while playing

  game.play
  puts "hi #{name}, your score is: #{game.check_game.to_s}"

  puts "do you want to play this hand?"

  answer = gets.chomp
  if answer == "no"
    puts "your final score is #{game.check_game.to_s}"
    playing = false
  end

  if game.check_game < -2
    puts "the score, #{game.check_game.to_s} is less then -2"
    puts "game is ending"
    playing = false
  end
end
