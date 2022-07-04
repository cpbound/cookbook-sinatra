class Recipe
  attr_accessor :done
  attr_reader :name, :description, :rating

  def initialize(name, description, rating = 0, done = false)
    @name = name
    @description = description
    @rating = rating
    @done = done
  end

  def mark
    @done = true
  end
end
