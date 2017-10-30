class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

end

class Deck

  def initialize
    @card_deck = []
    @ranks = ["Ace", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SEVEN", "EIGHT", "NINE", "TEN", "Jack", "Queen", "King"]
    @suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

    @ranks.each do |rank|
      @suits.each do |suit|
        @card_deck << Card.new(rank, suit)
      end
    end

  end

  def shuffle
    @card_deck.shuffle!
  end

  def deal
    @card_deck.shift.output_card
  end

end

deck = Deck.new
deck.shuffle
deck.deal