require_relative './players'
require_relative './turn'

class Game

  def initialize
    @player1 = Players.new("Chris")
    @player2 = Players.new("Maija")
    @players = [@player1, @player2]
    @turn = Turn.new(@players)
  end

  def run

    while(!game_over?)
      @turn.new_turn
      current_player = @turn.current_player
      second_player = @turn.second_player
      number1 = rand(20)
      number2 = rand(20)
      puts "#{current_player.name} What does #{number1} plus #{number2} equal?"
      answer = gets.to_i
      if answer == number1 + number2
        current_player.right_answer
      else
        current_player.wrong_answer
      end
      game_status
      sleep 0.5
    end

    end_game
  end
  def game_status
    puts "#{@player1.status} VS #{@player2.status}"
  end

  def game_over?
    @players.any?{|player| player.out_of_lives?}
  end

  def end_game
    winner = @players.select{|player| player.the_winner?}.first
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "---- GAME OVER ----"
  end

end

