class TicTacToe
  # attr_accessor :board

  def initialize(board = nil)
    @board = board || Array.new(9, " ")

  end

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]



    def display_board

   puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
   puts "-----------"
   puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
   puts "-----------"
   puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)

    user_input.to_i - 1

  end

  def move(index, token)
  @board[index] = token

  end

  def position_taken?(index)
  !(@board[index].nil? || @board[index] == " ")
  end

  def valid_move?(index)
  index.between?(0, 8) && !(position_taken?(index))

  end

  def turn_count
  a = 0
  @board.each do |spaces|
    if spaces == "X" || spaces == "O"
      a += 1
    end
  end
  a
end

        def current_player
        turn_count % 2 == 0? "X" : "O"
        end

        def turn
        puts "Please enter 1-9:"


        user_input = gets.strip

        index = input_to_index(user_input)
        token = current_player


        if valid_move?(index)
        puts 'valid move'
        move(index, token)
        display_board
        else
        puts 'try again'
        turn
        end
        :display_board
        end



        def won?(board)
          winner = nil

          WIN_COMBINATIONS.detect do |combo|
            board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(combo[0])

        end





end
