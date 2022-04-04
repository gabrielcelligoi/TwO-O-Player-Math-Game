class Player

  attr_accessor :name, :life

  def initialize
    @name = gets.chomp
    @life = 3
  end

end