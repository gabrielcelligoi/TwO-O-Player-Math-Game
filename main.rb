require_relative "./players"

class Game  

  def initialize
    puts "Set Player 1"
    @player1 = Player.new
    puts "Set Player 2"
    @player2 = Player.new
    @players = [@player1, @player2].shuffle
  end

  def play    

    current_player = @players.first
    second_player = @players.last
    
    while (current_player.life > 0 && second_player.life > 0) do

      selected_num1 = rand(1..20)
      selected_num2 = rand(1..20)

      puts "#{current_player.name}: What does #{selected_num1} plus #{selected_num2} equal?"
      answer = gets.chomp
    
      

      if answer.to_i == selected_num1 + selected_num2
        puts "****YES! You are correct.****"
      else
        puts "      Seriously? NO!      "
        current_player.life -= 1
      end

      if (current_player.life > 0 && second_player.life > 0)
        puts "#{current_player.name}: #{current_player.life}/3 vs #{second_player.name}: #{second_player.life}/3"
        puts
        puts "----------NEW TURN------------"
        puts
  
        @players.rotate!
  
        current_player = @players.first
        second_player = @players.last

      else
        puts "-------------------------------"
        puts "#{second_player.name} WINS!!!"
        puts
        puts "----------GAME OVER------------"

      end
      
    end

  end

end

game1 = Game.new
game1.play