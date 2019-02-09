class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    while !@game_over
      take_turn
    end
      reset_game
      game_over_message
  end

  def take_turn
    show_sequence
    print @seq
    sleep(1)
    system("clear")
    require_sequence
    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
   puts "Enter a exact sequence shown to you earlier ex [blue,white] --> blue,white"
   input = gets.chomp.split(",")
   @game_over = true if input != @seq
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "good job"
  end

  def game_over_message
    puts "Sorry you lost"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
