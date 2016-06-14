# Inheritance
Inheritance is a relation between two classes. A child class inherits all the features of its parent class

class Animal
  def initialize
    @life = true
  end
end

class Mammal < Animal
  def initialize
    @lay_eggs = false
  end
end

class Ar
  def initialize
    @imagination = true
  end
end

class Painting < Art
  def initialize
    @paint = true
  end
end

# Composition
Composition is a relation between two classes, one of them invokes the other one inside the block.

class Other
  def override()
    puts "OTHER override()"
  end
end

class Child
  def initialize()
    @other = Other.new()
  end
end

class Furniture
  def initialize 
    @wood = true
  end
end

class Table
  def initialize 
    @table = Furniture.new
  end
end


# Encapsulation

Encapsulation means to hide certain private parts of a class or method from foreign parties. This is achieved by setting either "private" or "public" code parts.

class Personal_info
  def first_name(name)
    @name = name
  end

  def full_name
    first_name + " " + last_name
  end

  private

  def last_name(last)
    @last_name = last
  end

end

# Duck Typing

Duck typing refers to the concept by which Ruby doesn't care too much of the type of either the classes or methods, it cares for what they can do. We use respond_to? syntax to know its capabilities.

class Dog
attr_accessor :tail, :feet, :mouth
  def bark
    ""
  end
end

dog = Dog.new 
dog.respond_to?(:tail)==true

# Law of Demeter

 The law of Demeter is a programming guideline implying that an entity should only talk to its close friends. If we put in another way, an object should not call methods through another object.

 WRONG

 human.walk.rest

 RIGHT

 human.walk
 human.rest

 # Overriding Methods (usage of "super").

 The "super" method calls the same method in the parent method, and overwrites its value.

class Bicycle  
  attr_reader :gears, :wheels, :seats  
  def initialize(gears = 1)  
    @wheels = 2  
    @seats = 1  
    @gears = gears  
  end  
end  
  
class Tandem < Bicycle  
  def initialize(gears)  
    super  
    @seats = 2  
  end  
end  
t = Tandem.new(2)  
puts t.gears  
puts t.wheels  
puts t.seats  
b = Bicycle.new  
puts b.gears  
puts b.wheels  
puts b.seats 

In the example shown above, in the Tandem class we call the initialize method in its parent, Bicycle. This overwrites the values of @wheels, @seats and @gears. 

# Modules

Modules are a way to group methods or classes. They need to be "required" at the top of the program to be used.

require "benchmark"

Time.now

# Scope

Scope concept is all about having the right variables available when it comes the time to call them upon.
For this there are 4 levels of variables.
Class variable - @@variable
Instance variable - @variable
Global variable - $variable
Local variable - variable.

# Instance vs Class Methods and Variables

An instance is an element of a class. It has the same attributes the class states. Any instance variable should be preceded by a single "@", its scope its the instance itself.

# Class methods

Class methods are methods used in each class and its inside elements.
There are 3 ways of stating Class Methods.
# Way 1
class Foo
  def self.bar
    puts 'class method'
  end
end

Foo.bar # "class method"

# Way 2
class Foo
  class << self
    def bar
      puts 'class method'
    end
  end
end

Foo.bar # "class method"

# Way 3
class Foo; end
def Foo.bar
  puts 'class method'
end

Foo.bar # "class method"

 # Polymorphism

 Polymorphism refers to the ability of calling the same method in two or more classes and getting different results.

class Cat
  def make_noise
    puts "meow!"
  end
end

class Dog
  def make_noise
    puts "woof!"
  end
end

cat = Cat.new
dog = Dog.new
cat.make_noise == "meow!"
dog.make_noise == "woof!"

#Separation of Concerns

separation of concerns is a design principle for separating a computer program into distinct sections, such that each section addresses a separate concern.

class Lote
attr_accessor :tiempo_coccion, :super_lote
  def initialize(orden) #orden es un arreglo de objetos
    @tiempo_coccion
    @orden = orden
    @lote_4 = []
    @lote_5 = []
    @lote_6 = []
    @super_lote = []
  end

  def separar_por_lotes
    @orden.each do |torta|
      if torta.tiempo_coccion == 4
        @lote_4 << torta
      elsif torta.tiempo_coccion == 5
        @lote_5 << torta
      else
        @lote_6 << torta
      end
    end
    @super_lote = [@lote_4,@lote_5,@lote_6]
  end 
  
end

