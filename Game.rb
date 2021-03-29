require './Player'  
require './Question' 

class Game
  attr_reader :player_1, :player_2, :current_player, :question
  
  
  def initialize(name1, name2)
    @player_1 = Player.new(name1)
    @player_2 = Player.new(name2)
    @current_player = @player_1
  end

  # def run_game
  #   while player_1.lives > 0
  #     @question = Question.new
  #     puts "#{player_1.name}: #{question.question}"
  #     choice = $stdin.gets.chomp
  #     if choice.to_i != question.answer
  #       player_1.lose_a_life
  #       puts "Seriously? No!"
        
  #       if player_1.lives > 0
  #         puts "#{player_1.name}: #{player_1.lives}/3"
  #         puts "----- NEW TURN -----"
  #       else
  #         puts "#{player_2.name} wins with a score of #{player_2.lives}/3"
  #         puts "----- GAME OVER -----"
  #       end
  #     else
  #       puts "Yes! Correct!"
  #       puts "#{player_1.name}: #{player_1.lives}/3"
  #       puts "----- NEW TURN -----"
  #     end
  #   end
  # end

  def run_game
    while player_1.lives > 0 && player_2.lives > 0
      @question = Question.new
      puts "#{current_player.name}: #{question.question}"
      choice = $stdin.gets.chomp
      if choice.to_i != question.answer
        current_player.lose_a_life
        puts "Seriously? No!"
        if current_player.lives > 0
          puts "#{player_1.name}: #{player_1.lives}/3  #{player_2.name}: #{player_2.lives}/3"
          puts "----- NEW TURN -----"
        else
          if @current_player == @player_2
            puts "#{player_1.name} wins with a score of #{player_1.lives}/3"
          else
            puts "#{player_2.name} wins with a score of #{player_2.lives}/3"
          end
          puts "----- GAME OVER -----"
        end
      else
        puts "Yes! Correct!"
        puts "#{player_1.name}: #{player_1.lives}/3  #{player_2.name}: #{player_2.lives}/3"
        puts "----- NEW TURN -----"
      end
      if @current_player == @player_2
        @current_player = @player_1
      else
        @current_player = @player_2
      end
    end
  end



end


# game = Game.new("Tony", "Paolo");

# question = game.run_game

# puts question.question


# puts question.answer


game = Game.new("Tony", "Paolo")

game.run_game

# puts game.player_1.lives
# puts game.player_1.lose_a_life
# puts game.player_2.lives

# puts game.question.question
# puts game.question.answer

# while ()

