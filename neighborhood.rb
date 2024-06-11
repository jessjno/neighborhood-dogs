require_relative 'dogs'

class Neighborhood
  attr_accessor :dogs
  
  def initialize
    @dogs = []
    puts "Welcome to the Neighborhood Dogs App!"
  end

  def options
    loop do
      puts "Choose from the below options:"
      puts "1. Add my dog"
      puts "2. View dogs in my neighborhood"
      puts "3. Exit"

      choice = gets.chomp.to_i

      case choice
      when 1
        add_dog
      when 2
        view_dogs
      when 3
        puts "See Ya Later!"
        break
      else
        puts "Invalid. Please choose a valid option below"
      end
    end
  end

  def add_dog(name, breed, color)
    dog = Dog.new(name, breed, color)
    @dogs << dog
    puts "#{name}, has been added to Neighborhood Dogs"
  end

  def view_dogs
    puts dogs
  end
end
