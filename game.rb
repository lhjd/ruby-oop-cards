class Game
    def initialize
      @deck = Cards.new
      @score = 0
      @hands = []
    end
  
    def play
      user_hand = @deck.show_card
      puts "user hand:" + user_hand.to_s
      house_hand = @deck.show_card
      puts "house hand:" + house_hand.to_s
  
      @hands << [user_hand, house_hand]
  
      if user_hand > house_hand
        puts 'user wins'
        @score += 1
      else
        puts 'house wins'
        @score -= 1
      end
    end
  
    def check_game
      @score
    end
  
  end
  