module BlackJack
  class Deck

    def initialize
      @suit = [:hearts, :diamonds, :clubs, :spades]
      @face = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "A", "J", "Q", "K"]
      # We do this because in the cards method, we give it input, and this is
      # the input that we will eventually pass through it
      @deck = []

      @suit.each do |suit|
        @face.each do |face|
          deck << BlackJack::Card.new(suit, face) #this is where we call on the
          # cards method and create input to go into it
        end
      end
    end

    def suit
      @suit
    end

    def face
      @face
    end

    def cards
      @deck
    end

    def deck
      @deck
    end

    def size
      deck.size
    end

    def shuffle
      deck.shuffle
    end

    def deal
      # We want to get a "card" and then permanently remove it
      # from the deck
      card = deck[-1]
      deck.pop
    end
  end
end
