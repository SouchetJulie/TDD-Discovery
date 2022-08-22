load './dealer.rb'

def game  
  puts "Welcome to BlackJack 💎"
  puts "Your goal is to reach a score of exactly 21 by drawing cards."
  puts "If you go over 21, you lose!"
  start

  loop do
    puts "Draw a card (y/yes) or end the game (anything else)"
    input = gets.chomp # chomp removes the whitespace
    if input != "y" && input != "yes"
      break
    end
    hit
    score = state_of_game
    if score >= 21
      puts "Over 21! Game ends."
      break
    end
  end
  end_of_game
end

game
