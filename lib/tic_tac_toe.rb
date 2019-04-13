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

  

    def display
   puts " #{self.spaces[0]} | #{self.spaces[1]} | #{self.spaces[2]} "
   puts "-----------"
   puts " #{self.spaces[3]} | #{self.spaces[4]} | #{self.spaces[5]} "
   puts "-----------"
   puts " #{self.spaces[6]} | #{self.spaces[7]} | #{self.spaces[8]} "
  end








end
