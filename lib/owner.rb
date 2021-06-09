require "pry"

class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :mood

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def cats
    Cat.all.select { |cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
   new_cat = Cat.new(name, self)
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.map {|cat| cat.mood = "happy"}
  end

  def sell_pets

    pets = self.dogs + self.cats
    pets.map do |pet| pet.mood = "nervous" 
    pet.owner = nil
    end
  end

  def list_pets
     "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  # binding.pry
end
