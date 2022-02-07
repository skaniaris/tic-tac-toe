
class TicTacToe
    @@number_of_games = rand(2)
    attr_writer :player_selection

    def initialize
        @player_selection = 0 
        @computer_selection = 0 

        @game_over = false

        @positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @game_board = {1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9}

        p "TIC TAC TOE"

        if @@number_of_games % 2 == 0 
            p "Computer goes first"
            computer_selection
            
        elsif !(@@number_of_games % 2 == 0)
            p "Player goes first"
            puts "#{@game_board[1]} | #{@game_board[2]} | #{@game_board[3]}" 
            puts "#{@game_board[4]} | #{@game_board[5]} | #{@game_board[6]}"
            puts "#{@game_board[7]} | #{@game_board[8]} | #{@game_board[9]}" 
            player_selection
            
        end 
    end 

    def random_select 
            selection = @positions.sample
            @positions.delete(selection)
            return selection 
    end 

    def computer_selection
        if @game_over == true 
            return
        elsif 
        @computer_selection = random_select

        p "Computer selects O position: #{@computer_selection}"
        @game_board[@computer_selection] = "O"
            puts "#{@game_board[1]} | #{@game_board[2]} | #{@game_board[3]}" 
            puts "#{@game_board[4]} | #{@game_board[5]} | #{@game_board[6]}"
            puts "#{@game_board[7]} | #{@game_board[8]} | #{@game_board[9]}" 
        play_game
        player_selection
        end 
    end 

    def player_selection 
        if @game_over == true 
            return 
        elsif 
        p "Select your X position"
        @player_selection = gets.chomp.to_i

        if (@player_selection > 0 && @player_selection <= 9 && !(@positions.include?(@player_selection)))
            p "That number has already been selected, choose a number on the board that hasn't been chosen yet."
            player_selection
        elsif(@player_selection > 0 && @player_selection <= 9) 
            p "You've selected X position: #{@player_selection}"
            @positions.delete(@player_selection)
            @game_board[@player_selection] = "X"
            puts "#{@game_board[1]} | #{@game_board[2]} | #{@game_board[3]}" 
            puts "#{@game_board[4]} | #{@game_board[5]} | #{@game_board[6]}"
            puts "#{@game_board[7]} | #{@game_board[8]} | #{@game_board[9]}" 
            play_game
        else 
            p "You've selected an invalid value, choose a number between 1 and 9"
            player_selection
        end
        computer_selection
    end 
    end 

    def play_game
        if @game_board[1] == @game_board[2] && @game_board[1] == @game_board[3]
            if @game_board[3] == "X"
                p "Player wins!"
            elsif @game_board[3] == "O"
                p "Computer wins, you lose."
            end 
            @game_over = true 
        elsif @game_board[4] == @game_board[5] && @game_board[4] == @game_board[6]
            if @game_board[6] == "X"
                p "Player wins!"
            elsif @game_board[6] == "O"
                p "Computer wins, you lose."
            end  
            @game_over = true 
        elsif @game_board[7] == @game_board[8] && @game_board[7] == @game_board[9]
            if @game_board[9] == "X"
                p "Player wins!"
            elsif @game_board[9] == "O"
                p "Computer wins, you lose."
            end 
            @game_over = true 
        elsif @game_board[1] == @game_board[4] && @game_board[1] == @game_board[7]
            if @game_board[7] == "X"
                p "Player wins!"
            elsif @game_board[7] == "O"
                p "Computer wins, you lose."
            end  
            @game_over = true 
        elsif @game_board[2] == @game_board[5] && @game_board[2] == @game_board[8]
            if @game_board[8] == "X"
                p "Player wins!"
            elsif @game_board[8] == "O"
                p "Computer wins, you lose."
            end 
            @game_over = true  
        elsif @game_board[3] == @game_board[6] && @game_board[3] == @game_board[9]
            if @game_board[9] == "X"
                p "Player wins!"
            elsif @game_board[9] == "O"
                p "Computer wins, you lose."
            end
            @game_over = true   
        elsif @game_board[1] == @game_board[5] && @game_board[1] == @game_board[9]
            if @game_board[9] == "X"
                p "Player wins!"
            elsif @game_board[9] == "O"
                p "Computer wins, you lose."
            end  
            @game_over = true 
        elsif @game_board[3] == @game_board[5] && @game_board[3] == @game_board[7]
            if @game_board[7] == "X"
                p "Player wins!"
            elsif @game_board[7] == "O"
                p "Computer wins, you lose."
            end  
            @game_over = true 
        elsif @positions == []
            p "It's a tie!"
            @game_over = true 
        end
    end 
end 

game_1 = TicTacToe.new 