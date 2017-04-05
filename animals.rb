class Animal
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end

end

class Bird < Animal
  def talk
    puts "#{name} says Chirp Chirp!"
  end

end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{@age}"
  end
end

class Cat < Animal
  def talk
    puts "#{name} says Meow!"
  end

end

bird = Bird.new
dog = Dog.new
cat = Cat.new

dog.name = "Fido"
cat.name = "Whiskers"
bird.name = "Polly"

dog.age = 2

dog.talk
puts dog
bird.talk
cat.talk

armadillo = Armadillo.new
armadillo.name = "Dillon"
armadillo.move "burrow"
