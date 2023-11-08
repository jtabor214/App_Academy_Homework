class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
      self.game_over_message
      self.reset_game
  end

  def take_turn
    self.show_sequence 
    self.require_sequence
      if @game_over == false
        round_success_message
        @sequence_length += 1
      end
  end

  def show_sequence
    self.add_random_color
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
    p "Nice! Watch closely!"
  end

  def game_over_message
    p "Better luck next time!"
  end

  def reset_game
    if @game_over == true
      @sequence_length = 1
      @seq = []
      @game_over = false
    end
  end
end