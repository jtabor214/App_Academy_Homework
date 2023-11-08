class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
  end

  def take_turn
    self.show_sequence 
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    p "What was the color?"

    @seq.each do |color|
      guess = gets.chomp
      if guess != color
        @game_over = true
      end
    end
  end

  def add_random_color
    @seq << COLORS.shuffle[0]
  end

  def round_success_message
  end

  def game_over_message
  end

  def reset_game
  end
end