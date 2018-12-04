class Turn

  attr_reader :current_player, :second_player

  def initialize(players)
    @players = players.shuffle
    @current_player = nil
    @second_player = nil
  end

  def get_current_player
    @players.first
  end

  def new_turn
    puts "------- New Turn! --------"
    puts ""
    @current_player = get_current_player
    @second_player = get_second_player(@current_player)
    @players.rotate!
  end

  def get_second_player(current)
    @players.select{|player| player != current}.sample
  end
end