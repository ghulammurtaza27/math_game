class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
    puts "class initialized"
  end

  def lose_a_life()
    @lives -= 1
  end
  
end




