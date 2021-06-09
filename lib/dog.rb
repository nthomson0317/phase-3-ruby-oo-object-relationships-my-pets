class Dog
  # code goes here

  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []
  
  def self.all
    @@all
  end

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
end
