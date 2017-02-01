class Animal

  attr_accessor :name, :age, :gender, :species, :toys

  def initializer (name, age, gender, species, toys)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = toys
    puts "animal created"
  end

end
