class Player
  attr_accessor :location
  attr_reader :name

  def initialize(name)
    @name = name
    @location = 0
  end


  def roll_and_move
    d6 = [1,2,3,4,5,6]
    @location += d6.shuffle.first
  end







end
