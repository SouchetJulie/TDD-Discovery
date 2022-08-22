# TO DO: Write in this file the following methods

$current_score = 0
$dealer_score = 0

# draw_card
def draw_a_card()
    rand(1..11)
end

# - hit
def hit()
    draw_card = draw_a_card
    puts "You drew a #{draw_card}"
    $current_score = $current_score + draw_card
end

# - dealers_hand
def dealers_hand()
    while $dealer_score < 17
        # Draw two cards
        $dealer_score = $dealer_score + draw_a_card
        $dealer_score = $dealer_score + draw_a_card
    end
end

# - state_of_game
def state_of_game()
    puts "Your score is #{$current_score}"
    return $current_score
end

# - end_of_game
def end_of_game()
    puts "=-=-=-=-=-=-=-=-=-=-=-="
    puts "The dealer had #{$dealer_score}."
    puts ""
    puts "Your score is..."
    if $current_score == 21
        puts "\tBlackJack! 💰"
        puts "You win!"
    elsif $current_score > 21
        puts "\tBurned... (#{$current_score})"
        puts "You lose :("
    else # < 21
        puts "\t...#{$current_score}. You could have done better."

        if $dealer_score > $current_score
            puts "You lose"
        elsif $dealer_score === $current_score
            puts "It's a draw"
        else
            puts "You win!"
        end
    end
end

# - start game
def start()
    puts "=-=-=-=-=-=-=-=-=-=-=-="
    puts "Game start!"
    $current_score = 0
    dealers_hand
    puts ""
end
