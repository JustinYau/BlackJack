
class Player
  def initialize(name_from_input)
    @name = name_from_input
    @hand = []
  end

  def add_to_hand(cards)
    @hand = @hand + cards
  end

  def hand
    @hand.inspect + " Score: " + score.to_s
  end

  def score
    sum = 0
    @hand.each do |card|
      basic_value = card.to_i
      if card.start_with?("A")
        basic_value = 11
      elsif basic_value == 0
        basic_value = 10
      end
      sum = sum + basic_value
    end
    sum
  end

  def name
    @name
  end
end

class Deck

  SUITS = ["H", "S", "C", "D"]
  FACE_VALUE = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

  def initialize
    @cards = Deck.construct_cards
  end

  def cards
    @cards
  end

  def deal_hand
    @cards.shift(2)
  end

  def self.construct_cards
    cards = []
    SUITS.each do |suit|
      FACE_VALUE.each do |face_value|
        cards << face_value + suit
      end
    end
    cards.shuffle
  end
end



puts "WELCOME TO BLACKJACK!"

puts "what is your name?: "
player = Player.new("justin")
puts "welcome, #{player.name}"
deck = Deck.new


puts "the deck is ready!  Dealing your first hand!"

player.add_to_hand(deck.deal_hand)

puts player.hand 