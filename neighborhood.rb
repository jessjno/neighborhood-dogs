require_relative 'dogs'

class Neighborhood
  attr_accessor :dogs
  
  def initialize
    @dogs = []
    puts "Welcome to the Neighborhood Dogs App!"
  end

  def run
    loop do
      puts "Choose from the below options:"
      puts "1. Add my dog"
      puts "2. View dogs in my neighborhood"
      puts "3. Exit"
  
    choice = gets.chomp.to_i

      case choice
      when 1
        add_new_dog_from_input
      when 2
        view_all_dogs
      when 3
        puts "See Ya Later!"
        break
      else
        puts "Invalid. Please choose a valid option below"
      end
    end
end

def add_new_dog(name, breed, color)
  @dogs << Dog.new(name, breed, color)
  "#{name} has been added to Neighborhood Dogs"
end

def view_all_dogs
  if @dogs.empty?
    "There are no dogs in this Neighborhood"
  else
    @dogs.map { |dog| "#{dog.name} - #{dog.breed} #{dog.color}" }.join(", ")
  end
end

private

  def add_new_dog_from_input
    puts "Adding new dog to Neighborhood"
    print "Enter your dogs name: "
    name = gets.chomp
    print "Enter the breed of your dog: "
    breed = gets.chomp
    print "Enter the color of your dog: "
    color = gets.chomp
    puts add_new_dog(name, breed, color)
  end
end
